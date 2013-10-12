<!DOCTYPE HTML>
<html lang="en" class="noJavaScript">
<head>
<meta charset="utf-8">
<meta http-equiv="CACHE-CONTROL" content="NO-CACHE">
<meta http-equiv="PRAGMA" content="NO-CACHE">
<meta http-equiv="EXPIRES" content="0">
<meta name="author" content="Phillip Senn">
<link rel="stylesheet" type="text/css" href="/Library/css/html.css">
<cfoutput>
<cfif StructKeyExists(url,"theme")>
	<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/#url.Theme#/jquery-ui.css" type="text/css" media="all" />
<cfelse>
	<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/ui-lightness/jquery-ui.css" type="text/css" media="all" />
</cfif>
</cfoutput>
<script src="http://www.google.com/jsapi"></script>
<script>
google.load('jquery', '1');
google.load('jqueryui', '1');
</script>
<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="/Matrix/jQuery/jQueryUI/CSS/Example.css">
<title>jQuery UI Matrix</title>
