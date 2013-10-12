<cfset myContent = "
SELECT StateName,Population
,100. * Population / SUM(Population) OVER() AS Pct
FROM State
ORDER BY Population DESC
">

<cfquery name="qryState">
#myContent#
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>#myContent#</pre>
This example was inspired by "<a href="http://books.google.com/books?id=v_T82PlI3UwC&lpg=PA1&ots=1jZWez78HK&dq=Microsoft%20SQL%20Server%202008%20T-SQL%20Fundamentals&pg=PT93##v=onepage&q&f=false">Microsoft SQL Server 2008 T-SQL Fundamentals</a>", Page 47.
<table>
	<thead>
		<tr>
			<th>StateName</th>
			<th class="num">Population</th>
			<th class="num">Pct All</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryState">
			<tr>
				<td>#StateName#</td>
				<td class="num">#NumberFormat(Population)#</td>
				<td class="num">#NumberFormat(Pct,"999.99")#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>

