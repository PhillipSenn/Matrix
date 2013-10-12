<cfscript>
include '/Library/Inc/Bootstrap.cfm';
param name="request.css.Enabled" default="1";
if (request.css.Enabled) {
	Print('<link rel="stylesheet" href="' & Application.Home.app & 'css/HTML.css">');
}
include '/Library/Inc/body.cfm';
include Application.home.dir & 'Inc/navbar.cfm';
Print('<section class="container-fluid">');
Print('	<article class="hero-unit">');
</cfscript>