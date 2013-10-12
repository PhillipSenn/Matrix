<cfoutput>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/ui-lightness/jquery-ui.css" rel="stylesheet" type="text/css">
</head>

<body>
<form>
	<input type="date" id="myDate">
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.js"></script>
<script src="DateTimeSelect.js"></script>
</body>
</html>
</cfoutput>