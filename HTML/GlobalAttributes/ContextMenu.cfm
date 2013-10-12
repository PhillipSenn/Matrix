<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">

<h1>ContextMenu</h1>
http://www.w3.org/TR/html5/author/the-menu-element.html#attr-contextmenu
<form name="npc">
	<input name="FirstName" contextmenu="X" required>
	<menu type=context id="X">
		<command label="Pick random name" onclick="document.forms.npc.elements.FirstName.value = getRandomName()">
		<command label="Prefill other fields based on name" onclick="prefillFields(document.forms.npc.elements.FirstName.value)">
	</menu>
</form>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
