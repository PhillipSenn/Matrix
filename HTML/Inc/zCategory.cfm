<ul class="sf-menu">
<li>Category
	<ul>
		<li>
			<input name="Cat" type="checkbox" value="Document metadata" id="CatMeta"
			<cfif ListFind(url.Cat,"Document metadata")>checked</cfif>>
			<label for="CatMeta">Document metadata</label>
		</li>
		<li>
			<input name="Cat" type="checkbox" value="Edits" id="CatEdits"
			<cfif ListFind(url.Cat,"Edits")>checked</cfif>>
			<label for="CatEdits">Edits</label>
		</li>
		<li>
			<input name="Cat" type="checkbox" value="Embedded content" id="CatEmbedded"
			<cfif ListFind(url.Cat,"Embedded content")>checked</cfif>>
			<label for="CatEmbedded">Embedded content</label>
		</li>
		<li>
			<input name="Cat" type="checkbox" value="Forms" id="CatForms"
			<cfif ListFind(url.Cat,"Forms")>checked</cfif>>
			<label for="CatForms">Forms</label>
		</li>
		<li>
			<input name="Cat" type="checkbox" value="Grouping content" id="CatGrouping"
			<cfif ListFind(url.Cat,"Grouping content")>checked</cfif>>
			<label for="CatGrouping">Grouping content</label>
		</li>
		<li>
			<input name="Cat" type="checkbox" value="Interactive" id="CatInteractive"
			<cfif ListFind(url.Cat,"Interactive")>checked</cfif>>
			<label for="CatInteractive">Interactive</label>
		</li>
		<li>
			<input name="Cat" type="checkbox" value="root" id="Catroot"
			<cfif ListFind(url.Cat,"root")>checked</cfif>>
			<label for="Catroot">root</label>
		</li>
		<li>
			<input name="Cat" type="checkbox" value="Scripting" id="CatScripting"
			<cfif ListFind(url.Cat,"Scripting")>checked</cfif>>
			<label for="CatScripting">Scripting</label>
		</li>
		<li>
			<input name="Cat" type="checkbox" value="Sections" id="CatSections"
			<cfif ListFind(url.Cat,"Sections")>checked</cfif>>
			<label for="CatSections">Sections</label>
		</li>
		<li>
			<input name="Cat" type="checkbox" value="Tables" id="CatTables"
			<cfif ListFind(url.Cat,"Tables")>checked</cfif>>
			<label for="CatTables">Tables</label>
		</li>
		<li>
			<input name="Cat" type="checkbox" value="Text-level semantics" id="CatText"
			<cfif ListFind(url.Cat,"Text-level semantics")>checked</cfif>>
			<label for="CatText">Text-level semantics</label>
		</li>
		<li>
			<input name="Cat" type="checkbox" value="Select All" id="CatSelectAll"
			<cfif ListFind(url.Cat,"Select All")>checked</cfif>>
			<label for="CatSelectAll">Deselect All</label>
		</li>
	</ul>
</li>
</ul>