<cfset qryMenu = Application.Menu.WhereWName("ASCII")>

<cfoutput>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>ASCII Matrix</title>
<link rel="stylesheet" type="text/css" href="ASCII.css">
</head>

<body>
<table>
	<thead>
		<tr>
			<th class="num">Sort</th>
			<th>Name</th>
			<th>Info</th>
			<th>Desc</th>
		</tr>
	</thead>
	<tbody>
	<cfloop query="qryMenu">
		<tr>
			<td class="num">#MenuSort#</td>
			<td>#MenuName#</td>
			<td>#MenuInfo#</td>
			<td>#MenuDesc#</td>
		</tr>
	</cfloop>
	</tbody>
</table>
</body>
</html>
</cfoutput>