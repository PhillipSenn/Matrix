<cfoutput>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>
</head>

<body>
<form>
	<select name="myTime">
		<cfloop from="6" to="23" index="hour">
			<cfloop from="0" to="45" index="minute" step="30">
				<option value="#hour*60 + minute#"
				<cfif hour EQ 19 AND minute EQ 0>selected</cfif>
				>#TimeFormat(hour & ":" & minute,"hh:mmtt")#</option>
				<cfif hour EQ 23>
					<cfbreak>
				</cfif>
			</cfloop>
			<cfif hour EQ 23>
				<cfbreak>
			</cfif>
		</cfloop>
	</select>
</form>
</body>
</html>
</cfoutput>