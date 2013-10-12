<cfquery name="qryMax">
WITH cte1 AS(
	SELECT City_StateID AS StateID
	,Count(*) AS CountOfCities
	FROM dbo.TempCity#session.ZenGardenSort#
	GROUP BY City_StateID
)
SELECT Max(CountOfCities) AS MaxCountOfCities
FROM CTE1
</cfquery>

<cfquery name="qry">
WITH cte1 AS(
	SELECT ROW_NUMBER() OVER (ORDER BY CityName) AS 'RowNumber'
	,CityName AS Alaska
	FROM dbo.TempCity#session.ZenGardenSort#
	WHERE City_StateID=101
)
,cte2 AS(
	SELECT ROW_NUMBER() OVER (ORDER BY CityName) AS 'RowNumber'
	,CityName AS Alabama
	FROM dbo.TempCity#session.ZenGardenSort#
	WHERE City_StateID=102
)
,cte3 AS(
	SELECT ROW_NUMBER() OVER (ORDER BY CityName) AS 'RowNumber'
	,CityName AS Arizona
	FROM dbo.TempCity#session.ZenGardenSort#
	WHERE City_StateID=114
)
,cte4 AS(
	SELECT ROW_NUMBER() OVER (ORDER BY CityName) AS 'RowNumber'
	,CityName AS Arkansas
	FROM dbo.TempCity#session.ZenGardenSort#
	WHERE City_StateID=115
)
,cte5 AS(
	SELECT ROW_NUMBER() OVER (ORDER BY CityName) AS 'RowNumber'
	,CityName AS California
	FROM dbo.TempCity#session.ZenGardenSort#
	WHERE City_StateID=113
)
SELECT cte1.RowNumber,Alaska,Alabama,Arizona,Arkansas,California
FROM CTE1 
LEFT OUTER JOIN CTE2
ON CTE1.RowNumber = CTE2.RowNumber
LEFT OUTER JOIN CTE3
ON CTE1.RowNumber = CTE3.RowNumber
LEFT OUTER JOIN CTE4
ON CTE1.RowNumber = CTE4.RowNumber
LEFT OUTER JOIN CTE5
ON CTE1.RowNumber = CTE5.RowNumber
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h3>Common Table Expressions</h3>
<table>
	<thead>
		<tr>
			<th>RowNumber</th>
			<th>Alaska</th>
			<th>Alabama</th>
			<th>Arizona</th>
			<th>Arkansas</th>
			<th>California</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qry">
			<tr>
				<td class="num">#NumberFormat(RowNumber)#</td>
				<td>#Alaska#</td>
				<td>#Alabama#</td>
				<td>#Arizona#</td>
				<td>#Arkansas#</td>
				<td>#California#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
I need to show <cfoutput>#qryMax.MaxCountOfCities#</cfoutput> rows.
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>

