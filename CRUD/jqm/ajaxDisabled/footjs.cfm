<cfset request.jqm.header = "foot.js">

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>$('section').attr('data-role','page");
$('article').attr('data-role','content");
$('header').attr('data-role','header");
$('nav').attr('data-role','navbar");
$('ul').not('nav > ul').attr('data-role','listview");
$('a').not('li > a').attr('data-role','button");
$('footer').attr('data-role','footer");
$('form').attr('method','post");
$(document).bind("mobileinit", function() {
	$.mobile.ajaxEnabled = false;
});
$('form').on('click','input:submit[name="Delete"][value="Delete"]',function() {
	return window.confirm(this.title || 'Delete this record?');
});
<pre>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>