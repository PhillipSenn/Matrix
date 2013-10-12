<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<p hidden>This paragraph should be hidden, but jQuery changed it to style="display: block;".</p>
<span hidden>This span should also be hidden, but jQuery changed it to style="display: inline;".</span>
<form>
<input name="B" value="I use the hidden attribute" hidden>
<label for="A">But input type="hidden" stays hidden!</label>
<input name="A" type="hidden" value="I use type=hidden">
</form>
<cfinclude template="/Inc/foot.cfm">
<script src="show.js"></script>
<cfinclude template="/Inc/End.cfm">
