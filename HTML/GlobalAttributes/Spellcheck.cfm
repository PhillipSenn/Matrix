<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<form>
	<textarea name="myTextArea" spellcheck=true>asdf</textarea>
	<p>
	<textarea name="DoNotSpellcheck" spellcheck=false>asdf</textarea>
	</p>
</form>
Notice that the first asdf has a red line underneath it, while the second does not.
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
