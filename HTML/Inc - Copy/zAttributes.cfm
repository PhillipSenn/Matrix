<ul class="sf-menu">
	<li>Attributes
		<ul>
		<li>
			<input name="Attr" type="checkbox" value="Global Attribute" id="AttrGlobal"
			<cfif ListFind(url.Attr,"Global Attribute")>checked</cfif>>
			<label for="AttrGlobal">Global Attribute</label>
		</li>
		<li>
			<input name="Attr" type="checkbox" value="Local Attribute" id="AttrLocal"
			<cfif ListFind(url.Attr,"Local Attribute")>checked</cfif>>
			<label for="AttrLocal">Local Attribute</label>
		</li>
		<li>
			<input name="Attr" type="checkbox" value="Input Attribute" id="AttrInput"
			<cfif ListFind(url.Attr,"Input Attribute")>checked</cfif>>
			<label for="AttrInput">Input Element</label>
		</li>
		<li>
			<input name="Attr" type="checkbox" value="Select All" id="AttrSelectAll"
			<cfif ListFind(url.Attr,"Select All")>checked</cfif>>
			<label for="AttrSelectAll">Deselect All</label>
		</li>
	</ul>
</li>
</ul>