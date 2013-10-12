<cfhttp method="get" url="http://api.pusherapp.com/apps/7499/channels/test_channel/events?name=my_event">
<cfhttpparam type="header" name="body_md5" value="5eb63bbbe01eeed093cb22bb8f5acdc3">
<cfhttpparam type="header" name="auth_version" value="1.0">
<cfhttpparam type="header" name="auth_key" value="0fdde0fcb47115e8dc00">
<cfhttpparam type="header" name="auth_timestamp" value="1318303951">
<cfhttpparam type="header" name="auth_signature" value="e5c20050eb7b3d57d500ade79f9a7d35638e12cd0cd8669a596ded22834d1eef">
</cfhttp>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>
</head>

<body>
<cfdump var="#cfhttp#">
</body>
</html>
