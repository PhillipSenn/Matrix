<ul class="sf-menu">
<li class="current">
	<a href="javascript:;">Category</a>
	<ul>
		<li>
			<input name="Cat" type="checkbox" value="Document metadata" id="CatMeta"
			<cfif ListFindNoCase(url.Cat,"Document metadata")>checked</cfif>>
			<label for="CatMeta">Document metadata</label>
		</li>
		<li>
			<input name="Cat" type="checkbox" value="Edits" id="CatEdits"
			<cfif ListFindNoCase(url.Cat,"Edits")>checked</cfif>>
			<label for="CatEdits">Edits</label>
		</li>
		<li>
			<input name="Cat" type="checkbox" value="Embedded content" id="CatEmbedded"
			<cfif ListFindNoCase(url.Cat,"Embedded content")>checked</cfif>>
			<label for="CatEmbedded">Embedded content</label>
		</li>
		<li>
			<input name="Cat" type="checkbox" value="Forms" id="CatForms"
			<cfif ListFindNoCase(url.Cat,"Forms")>checked</cfif>>
			<label for="CatForms">Forms</label>
		</li>
		<li>
			<input name="Cat" type="checkbox" value="Grouping content" id="CatGrouping"
			<cfif ListFindNoCase(url.Cat,"Grouping content")>checked</cfif>>
			<label for="CatGrouping">Grouping content</label>
		</li>
		<li>
			<input name="Cat" type="checkbox" value="Interactive" id="CatInteractive"
			<cfif ListFindNoCase(url.Cat,"Interactive")>checked</cfif>>
			<label for="CatInteractive">Interactive</label>
		</li>
		<li>
			<input name="Cat" type="checkbox" value="root" id="Catroot"
			<cfif ListFindNoCase(url.Cat,"root")>checked</cfif>>
			<label for="Catroot">root</label>
		</li>
		<li>
			<input name="Cat" type="checkbox" value="Scripting" id="CatScripting"
			<cfif ListFindNoCase(url.Cat,"Scripting")>checked</cfif>>
			<label for="CatScripting">Scripting</label>
		</li>
		<li>
			<input name="Cat" type="checkbox" value="Sections" id="CatSections"
			<cfif ListFindNoCase(url.Cat,"Sections")>checked</cfif>>
			<label for="CatSections">Sections</label>
		</li>
		<li>
			<input name="Cat" type="checkbox" value="Tables" id="CatTables"
			<cfif ListFindNoCase(url.Cat,"Tables")>checked</cfif>>
			<label for="CatTables">Tables</label>
		</li>
		<li>
			<input name="Cat" type="checkbox" value="Text-level semantics" id="CatText"
			<cfif ListFindNoCase(url.Cat,"Text-level semantics")>checked</cfif>>
			<label for="CatText">Text-level semantics</label>
		</li>
		<li>
			<input name="Cat" type="checkbox" value="Select All" id="CatSelectAll"
			<cfif ListFindNoCase(url.Cat,"Select All")>checked</cfif>>
			<label for="CatSelectAll">Deselect All</label>
		</li>
	</ul>
</li>
	<li>
		<a href="javascript:;">Attributes</a>
		<ul>
		<li>
			<input name="Attr" type="checkbox" value="Global Attribute" id="AttrGlobal"
			<cfif ListFindNoCase(url.Attr,"Global Attribute")>checked</cfif>>
			<label for="AttrGlobal">Global Attribute</label>
		</li>
		<li>
			<input name="Attr" type="checkbox" value="Local Attribute" id="AttrLocal"
			<cfif ListFindNoCase(url.Attr,"Local Attribute")>checked</cfif>>
			<label for="AttrLocal">Local Attribute</label>
		</li>
		<li>
			<input name="Attr" type="checkbox" value="Input Attribute" id="AttrInput"
			<cfif ListFindNoCase(url.Attr,"Input Attribute")>checked</cfif>>
			<label for="AttrInput">Input Element</label>
		</li>
		<li>
			<input name="Attr" type="checkbox" value="Select All" id="AttrSelectAll"
			<cfif ListFindNoCase(url.Attr,"Select All")>checked</cfif>>
			<label for="AttrSelectAll">Deselect All</label>
		</li>
	</ul>
</li>

<li>
	<a href="javascript:;">Events</a>
	<ul>
		<li>
			<input name="Event" type="checkbox" value="Window Event" id="EventWindow"
			<cfif ListFindNoCase(url.Event,"Window Event")>checked</cfif>>
			<label for="EventWindow">Window</label>
		</li>
		<li>
			<input name="Event" type="checkbox" value="Form Event" id="EventForm"
			<cfif ListFindNoCase(url.Event,"Form Event")>checked</cfif>>
			<label for="EventForm">Form</label>
		</li>
		<li>
			<input name="Event" type="checkbox" value="Keyboard Event" id="EventKeyboard"
			<cfif ListFindNoCase(url.Event,"Keyboard Event")>checked</cfif>>
			<label for="EventKeyboard">Keyboard</label>
		</li>
		<li>
			<input name="Event" type="checkbox" value="Mouse Event" id="EventMouse"
			<cfif ListFindNoCase(url.Event,"Mouse Event")>checked</cfif>>
			<label for="EventMouse">Mouse</label>
		</li>
		<li>
			<input name="Event" type="checkbox" value="Media Event" id="EventMedia"
			<cfif ListFindNoCase(url.Event,"Media Event")>checked</cfif>>
			<label for="EventMedia">Media</label>
		</li>
		<li>
			<input name="Event" type="checkbox" value="Select All" id="EventSelectAll"
			<cfif ListFindNoCase(url.Event,"Select All")>checked</cfif>>
			<label for="EventSelectAll">Deselect All</label>
		</li>
	</ul>
</li>

</ul>