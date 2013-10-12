<cfinclude template="/Inc/html.cfm">
<link rel="stylesheet" type="text/css" href="AjaxURL.css">
<cfinclude template="/Inc/body.cfm">
<h1>$.ajax(url)</h1>
<form>
	<input name="A" value="1"> &divide; <input name="B" value="2"> = 
	<span id="SuccessWithNoErrors">If the ajax had a success with no errors, this is where it would place the text.</span>
	<p>
		<span id="msgErr"></span>
	</p>
	<p id="CompleteMsg">Complete Message goes here, regardless of success or error.</p>
	Here's a link to <a href="my.cfm.txt">a copy of my.cfm</a>, saved as a text file.
</form>
<cfinclude template="/Inc/foot.cfm">
<script src="ajaxURL.js"></script>
<cfinclude template="/Inc/End.cfm">
