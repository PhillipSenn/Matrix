<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>$.ajax(url,settings)</h1>
<form>
	<input name="A" value="1"> &divide; <input name="B" value="2"> = 
	<span id="SuccessWithNoErrors">If the ajax had a success with no errors, this is where it would place the text.</span>
	<p id="SuccessButWithErrors">If the ajax call were a success, but there was a database error, this is where
	THAT message would be.</p>
	<p id="ErrorMsg">An error message would go here if there were an Ajax error.</p>
	<p id="CompleteMsg">Complete Message goes here, regardless of success or error.</p>
	Here's a link to <a href="my.cfc.txt">a copy of my.cfc</a>, saved as a text file.
</form>
<cfinclude template="/Inc/foot.cfm">
<script src="ajaxURLSettings.js"></script>
<cfinclude template="/Inc/End.cfm">
