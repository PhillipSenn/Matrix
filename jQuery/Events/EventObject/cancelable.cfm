<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>cancelable</h1>
<form>
<p>Click submit to see if you can cancel the submit event.</p>
<input name="Save" type="submit" value="Save">
<p>I had to use return false here.</p>
</form>
<cfinclude template="/Inc/foot.cfm">
<script src="cancelable.js"></script>
<cfinclude template="/Inc/End.cfm">
