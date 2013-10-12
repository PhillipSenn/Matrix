<!---
drop table Budget
go
create table Budget(
Description Varchar(128),
Month1 Int,
Month2 Int,
Month3 Int,
Month4 Int,
Month5 Int,
Month6 Int,
Month7 Int,
Month8 Int,
Month9 Int,
Month10 Int,
Month11 Int,
Month12 Int
)
INSERT INTO Budget(Description,Month1,Month2,Month3,Month4,Month5,Month6,Month7,Month8,Month9,Month10,Month11,Month12) VALUES('Home',1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000)
INSERT INTO Budget(Description,Month1,Month2,Month3,Month4,Month5,Month6,Month7,Month8,Month9,Month10,Month11,Month12) VALUES('Car',100,100,100,100,100,100,100,100,100,100,100,100)
INSERT INTO Budget(Description,Month1,Month2,Month3,Month4,Month5,Month6,Month7,Month8,Month9,Month10,Month11,Month12) VALUES('Candy',10,10,10,10,10,10,10,10,10,10,10,10)
--->

<cfquery name="qry1">
select * from Budget
</cfquery>
<cfquery name="qry2">
SELECT BudgettedAmount,Code
FROM(
SELECT Month1,Month2,Month3,Month4,Month5,Month6,Month7,Month8,Month9,Month10,Month11,Month12
FROM Budget
) t
UNPIVOT(
BudgettedAmount	FOR Code
IN (Month1,Month2,Month3,Month4,Month5,Month6,Month7,Month8,Month9,Month10,Month11,Month12)
) AS unpvt;
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h3>UNPIVOT</h3>
If a client were to provide you with unnormalized data, such as a budget spreadsheet with the months running across the top and
the amounts going down the left side, then you can use the UNPIVOT command to normalize the data.
<cfdump var="#qry1#" label="Unnormalized data">
</p>
<table>
	<thead>
		<tr>
			<th>Code</th>
			<th>Budgetted Amount</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qry2">
			<tr>
				<td>#Code#</td>
				<td class="num">#NumberFormat(BudgettedAmount)#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
