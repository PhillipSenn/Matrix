<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>Event</h1>
<form>
<cfinclude template="/Inc/3Checkboxes.cfm">
</form>
Here you can see that even though the 2nd checkbox is checked (at least in the html when the document loads), then
the script fires a 'click' event on that checkbox, and thus unchecks it.
<p>Actually, this has a weird side effect, because if you press refresh, normally the page refreshes with
the values intact, but because the JavaScript is firing a click event, it has the effect of toggling chk2.</p>
<cfinclude template="/Inc/foot.cfm">
<script src="Event.js"></script>
<cfinclude template="/Inc/End.cfm">
