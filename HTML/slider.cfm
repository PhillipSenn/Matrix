<div class="slider">
		<div class="vfilter">
			<table>
				<thead>
					<tr>
						<th>Category</th>
						<th>Display</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><label for="CatMeta">Document metadata</label></td>
						<td><input name="Cat" type="checkbox" value="Document metadata" id="CatMeta"
						<cfif ListFind(url.Cat,"Document metadata")>checked</cfif>>
						</td>
					</tr>
					<tr>
						<td><label for="CatEdits">Edits</label></td>
						<td><input name="Cat" type="checkbox" value="Edits" id="CatEdits"
						<cfif ListFind(url.Cat,"Edits")>checked</cfif>>
						</td>
					</tr>
					<tr>
						<td><label for="CatEmbedded">Embedded content</label></td>
						<td><input name="Cat" type="checkbox" value="Embedded content" id="CatEmbedded"
						<cfif ListFind(url.Cat,"Embedded content")>checked</cfif>>
						</td>
					</tr>
					<tr>
						<td><label for="CatForms">Forms</label></td>
						<td><input name="Cat" type="checkbox" value="Forms" id="CatForms"
						<cfif ListFind(url.Cat,"Forms")>checked</cfif>>
						</td>
					</tr>
					<tr>
						<td><label for="CatGrouping">Grouping content</label></td>
						<td><input name="Cat" type="checkbox" value="Grouping content" id="CatGrouping"
						<cfif ListFind(url.Cat,"Grouping content")>checked</cfif>>
						</td>
					</tr>
					<tr>
						<td><label for="CatInteractive">Interactive</label></td>
						<td><input name="Cat" type="checkbox" value="Interactive" id="CatInteractive"
						<cfif ListFind(url.Cat,"Interactive")>checked</cfif>>
						</td>
					</tr>
					<tr>
						<td><label for="Catroot">root</label></td>
						<td><input name="Cat" type="checkbox" value="root" id="Catroot"
						<cfif ListFind(url.Cat,"root")>checked</cfif>>
						</td>
					</tr>
					<tr>
						<td><label for="CatScripting">Scripting</label></td>
						<td><input name="Cat" type="checkbox" value="Scripting" id="CatScripting"
						<cfif ListFind(url.Cat,"Scripting")>checked</cfif>>
						</td>
					</tr>
					<tr>
						<td><label for="CatSections">Sections</label></td>
						<td><input name="Cat" type="checkbox" value="Sections" id="CatSections"
						<cfif ListFind(url.Cat,"Sections")>checked</cfif>>
						</td>
					</tr>
					<tr>
						<td><label for="CatTables">Tables</label></td>
						<td><input name="Cat" type="checkbox" value="Tables" id="CatTables"
						<cfif ListFind(url.Cat,"Tables")>checked</cfif>>
						</td>
					</tr>
					<tr>
						<td><label for="CatText">Text-level semantics</label></td>
						<td><input name="Cat" type="checkbox" value="Text-level semantics" id="CatText"
						<cfif ListFind(url.Cat,"Text-level semantics")>checked</cfif>>
						</td>
					</tr>
					<tr>
						<td><label for="CatSelectAll">Deselect All</label></td>
						<td><input name="Cat" type="checkbox" value="Select All" id="CatSelectAll"
						<cfif ListFind(url.Cat,"Select All")>checked</cfif>>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!---
		<div class="vfilter">
			<table>
				<thead>
					<tr>
						<th>&nbsp;</th>
						<th>Attributes</th>
						<th>Display</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<a class="external" href="http://www.w3.org/wiki/HTML/Attributes/_Global">&nbsp;</a>
						</td>
						<td>
						<label for="AttrGlobal">Global Attribute</label></td>
						<td><input name="Attr" type="checkbox" value="Global Attribute" id="AttrGlobal"
						<cfif ListFind(url.Attr,"Global Attribute")>checked</cfif>>
						</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><label for="AttrLocal">Local Attribute</label></td>
						<td><input name="Attr" type="checkbox" value="Local Attribute" id="AttrLocal"
						<cfif ListFind(url.Attr,"Local Attribute")>checked</cfif>>
						</td>
					</tr>
					<tr>
						<td>
							<a class="external" href="http://www.w3.org/wiki/HTML/Elements/input">&nbsp;</a>
						</td>
						<td><label for="AttrInput">Input Element</label></td>
						<td><input name="Attr" type="checkbox" value="Input Attribute" id="AttrInput"
						<cfif ListFind(url.Attr,"Input Attribute")>checked</cfif>>
						</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><label for="AttrSelectAll">Deselect All</label></td>
						<td><input name="Attr" type="checkbox" value="Select All" id="AttrSelectAll"
						<cfif ListFind(url.Attr,"Select All")>checked</cfif>>
						</td>
					</tr>
				</tbody>
			</table>
		</div>--->
		<div class="vfilter">
			<table>
				<thead>
					<tr>
						<th>&nbsp;</th>
						<th>Events</th>
						<th>Display</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a class="external" href="http://www.w3.org/wiki/HTML/Attributes/_Global#Event-handler_Attributes">&nbsp;</a></td>
						<td><label for="EventWindow">Window</label></td>
						<td><input name="Event" type="checkbox" value="Window Event" id="EventWindow"
						<cfif ListFind(url.Event,"Window Event")>checked</cfif>>
						</td>
					</tr>

					<tr>
						<td>&nbsp;</td>
						<td><label for="EventForm">Form</label></td>
						<td><input name="Event" type="checkbox" value="Form Event" id="EventForm"
						<cfif ListFind(url.Event,"Form Event")>checked</cfif>>
						</td>
					</tr>

					<tr>
						<td>&nbsp;</td>
						<td><label for="EventKeyboard">Keyboard</label></td>
						<td><input name="Event" type="checkbox" value="Keyboard Event" id="EventKeyboard"
						<cfif ListFind(url.Event,"Keyboard Event")>checked</cfif>>
						</td>
					</tr>

					<tr>
						<td>&nbsp;</td>
						<td><label for="EventMouse">Mouse</label></td>
						<td><input name="Event" type="checkbox" value="Mouse Event" id="EventMouse"
						<cfif ListFind(url.Event,"Mouse Event")>checked</cfif>>
						</td>
					</tr>

					<tr>
						<td>&nbsp;</td>
						<td><label for="EventMedia">Media</label></td>
						<td><input name="Event" type="checkbox" value="Media Event" id="EventMedia"
						<cfif ListFind(url.Event,"Media Event")>checked</cfif>>
						</td>
					</tr>

					<tr>
						<td>&nbsp;</td>
						<td><label for="EventSelectAll">Deselect All</label></td>
						<td><input name="Event" type="checkbox" value="Select All" id="EventSelectAll"
						<cfif ListFind(url.Event,"Select All")>checked</cfif>>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="vfilter">
			<ul>
				<li><a href="Reference/Index.cfm">Reference</a></li>
				<li><a href="Terminology/Index.cfm">Terminology</a></li>
				<li><a href="http://twitter.com/#!/PhillipSenn">@PhillipSenn</a></li>
			</ul>
		</div>
	</div>