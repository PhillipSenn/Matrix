<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<form>
	<input name="Tab1" value="1" tabindex="1">
	<input name="Tab3" value="3" tabindex="3">
	<input name="Tab2" value="2" tabindex="2">
	<input name="Tab0" value="0" tabindex="0">
</form>
<p>No field has the focus when initially landing on the page.</p>
<p>Then it's field 1, 2, 3, the Home hyperlink, but then field 0 DOES get the focus!</p>
<p>Then the link to Example.css, and finally the address bar and Search field.</p>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
