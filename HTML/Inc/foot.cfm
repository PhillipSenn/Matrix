<cfscript>
Print('	</article>');
Print('<fieldset id="Source">');
Print('<legend>Source Code</legend>');
// Print('<div id="Source"></div>');
Print('</fieldset>');


myFileName = GetFileFromPath(cgi.SCRIPT_NAME);
myFileName = ListFirst(myFileName,".");
myPath = GetDirectoryFromPath(cgi.SCRIPT_NAME);
myPath = ExpandPath(myPath);
</cfscript>
<cftry>
	<cffile action="read" file="#myPath##myFileName#.css" variable="myCSS">
	<cfcatch>
		<cfset myCSS = "">
	</cfcatch>
</cftry>
<cfscript>
myCSS = Replace(myCSS,Chr(9),"   ","all");
if (myCSS NEQ "") {
	Print('<fieldset id="css">');
	Print('	<legend class="btn btn-warning">CSS</legend>');
	Print(myCSS);
	Print('</fieldset>');
}
Print('</section>');
include '/Library/Inc/foot.cfm';
Print('<script src="' & Application.Home.app & 'js/Matrix.js"></script>');
</cfscript>
