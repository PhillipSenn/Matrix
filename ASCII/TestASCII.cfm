1
<cfset result = CreateObject("component","ASCII").InsertVote("65",2)>
2
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>
</head>

<body>
<cfdump var="#result#">
</body>
</html>
