<ul class="sf-menu">
<li>Events
	<ul>
		<li>
			<input name="Event" type="checkbox" value="Window Event" id="EventWindow"
			<cfif ListFind(url.Event,"Window Event")>checked</cfif>>
			<label for="EventWindow">Window</label>
		</li>
		<li>
			<input name="Event" type="checkbox" value="Form Event" id="EventForm"
			<cfif ListFind(url.Event,"Form Event")>checked</cfif>>
			<label for="EventForm">Form</label>
		</li>
		<li>
			<input name="Event" type="checkbox" value="Keyboard Event" id="EventKeyboard"
			<cfif ListFind(url.Event,"Keyboard Event")>checked</cfif>>
			<label for="EventKeyboard">Keyboard</label>
		</li>
		<li>
			<input name="Event" type="checkbox" value="Mouse Event" id="EventMouse"
			<cfif ListFind(url.Event,"Mouse Event")>checked</cfif>>
			<label for="EventMouse">Mouse</label>
		</li>
		<li>
			<input name="Event" type="checkbox" value="Media Event" id="EventMedia"
			<cfif ListFind(url.Event,"Media Event")>checked</cfif>>
			<label for="EventMedia">Media</label>
		</li>
		<li>
			<input name="Event" type="checkbox" value="Select All" id="EventSelectAll"
			<cfif ListFind(url.Event,"Select All")>checked</cfif>>
			<label for="EventSelectAll">Deselect All</label>
		</li>
	</ul>
</li>
</ul>