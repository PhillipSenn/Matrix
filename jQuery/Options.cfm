<cfset DefaultAttr = "Property,selector,getter,setter,method,register,trigger,JavaScript,Element,Setting,Object,Select All">
<cfparam name="url.Attr" default="#DefaultAttr#">
<cfif url.Attr EQ "All">
	<cfset url.Attr = DefaultAttr>
</cfif>
<cfparam name="url.Usage" default="Intro">
<cfif url.usage EQ "All">
	<cfset url.Usage = "Intro,Begin,Inter,Adv,No,Select All">
</cfif>

<!---
<div id="filters">
	<ul class="hfilter">
		<li>
		<input name="Usage" type="checkbox" id="UsageIntro" value="Intro"
		<cfif ListFindNoCase(url.Usage,"Intro")>checked</cfif>
		>
		<label for="UsageIntro">Introduction</label>
		</li>
		<li>
		<input name="Usage" type="checkbox" id="UsageBegin" value="Begin"
		<cfif ListFindNoCase(url.Usage,"Begin")>checked</cfif>
		>
		<label for="UsageBegin">Beginner</label>
		</li>
		<li>
		<input name="Usage" type="checkbox" value="Inter" id="UsageInter"
		<cfif ListFindNoCase(url.Usage,"Inter")>checked</cfif>
		>
		<label for="UsageInter">Intermediate</label>
		</li>
		<li>
		<input name="Usage" type="checkbox" value="Adv" id="UsageAdv"
		<cfif ListFindNoCase(url.Usage,"Adv")>checked</cfif>
		>
		<label for="UsageAdv">Advanced</label>
		</li>
		<li>
		<input name="Usage" type="checkbox" value="No" id="UsageNo"
		<cfif ListFindNoCase(url.Usage,"No")>checked</cfif>
		>
		<label for="UsageNo">Do not use</label>
		</li>
		<li>
		<input name="Usage" type="checkbox" value="Select All" id="UsageAll"
		<cfif ListFindNoCase(url.Usage,"Select All")>checked</cfif>
		>
		<label for="UsageAll">Select All</label>
		</li>
	</ul>
	<div>
		<a id="ToggleSlider" href="#"><img src="../Images/MatrixFunnel88.gif" width="60"></a>
	</div>
	<div class="slider">
		<div class="vfilter">
			<table>
				<thead>
					<tr>
						<th scope="col">Category</th>
						<th scope="col">Display</th>
					</tr>
				</thead>
				<tbody>
				<tr>
					<td><label for="CatAjax"><a href="http://api.jquery.com/category/ajax/">Ajax</a></label></td>
					<td><input name="Cat" type="checkbox" id="CatAjax" value="Ajax" checked></td>
					</tr>
				<tr>
					<td>
					<label for="CatAttributes"><a href="http://api.jquery.com/category/attributes/">Attributes</a></label></td>
					<td><input name="Cat" type="checkbox" value="Attributes" checked id="CatAttributes"></td>
					</tr>
				<tr>
					<td>
					<label for="CatCore"><a href="http://api.jquery.com/category/core/">Core</a></label></td>
					<td><input name="Cat" type="checkbox" value="Core" checked id="CatCore"></td>
					</tr>
				<tr>
					<td>
					<label for="CatCSS"><a href="http://api.jquery.com/category/css/">CSS</a></label></td>
					<td><input name="Cat" type="checkbox" value="CSS" checked id="CatCSS"></td>
					</tr>
				<tr>
					<td>
					<label for="CatData"><a href="http://api.jquery.com/category/data/">Data</a></label></td>
					<td><input name="Cat" type="checkbox" value="Data" checked id="CatData"></td>
					</tr>
				<tr>
					<td>
					<label for="CatDeferred"><a href="http://api.jquery.com/category/deferred-object/">Deferred</a></label></td>
					<td><input name="Cat" type="checkbox" value="Deferred" checked id="CatDeferred"></td>
					</tr>
				<tr>
					<td>
					<label for="CatDimensions"><a href="http://api.jquery.com/category/dimensions/">Dimensions</a></label></td>
					<td><input name="Cat" type="checkbox" value="Dimensions" checked id="CatDimensions"></td>
					</tr>
				<tr>
					<td>
					<label for="CatEffects"><a href="http://api.jquery.com/category/effects/">Effects</a></label></td>
					<td><input name="Cat" type="checkbox" value="Effects" checked id="CatEffects"></td>
					</tr>
				<tr>
					<td>
					<label for="CatEvents"><a href="http://api.jquery.com/category/events/">Events</a></label></td>
					<td><input name="Cat" type="checkbox" value="Events" checked id="CatEvents"></td>
					</tr>
				<tr>
					<td>
					<label for="CatForms"><a href="http://api.jquery.com/category/forms/">Forms</a></label></td>
					<td><input name="Cat" type="checkbox" value="Forms" checked id="CatForms"></td>
					</tr>
				<tr>
					<td>
					<label for="CatJavaScript">JavaScript</label></td>
					<td><input name="Cat" type="checkbox" value="JavaScript" checked id="CatJavaScript"></td>
				</tr>
				<tr>
					<td>
					<label for="CatjQuery">jQuery</label></td>
					<td><input name="Cat" type="checkbox" value="jQuery" checked id="CatjQuery"></td>
				</tr>
				<tr>
					<td>
					<label for="CatManipulation"><a href="http://api.jquery.com/category/manipulation/">Manipulation</a></label></td>
					<td><input name="Cat" type="checkbox" value="Manipulation" checked id="CatManipulation"></td>
					</tr>
				<tr>
					<td>
					<label for="CatMiscellaneous"><a href="http://api.jquery.com/category/miscellaneous/">Miscellaneous</a></label></td>
					<td><input name="Cat" type="checkbox" value="Miscellaneous" checked id="CatMiscellaneous"></td>
					</tr>
				<tr>
					<td>
					<label for="CatOffset"><a href="http://api.jquery.com/category/offset/">Offset</a></label></td>
					<td><input name="Cat" type="checkbox" value="Offset" checked id="CatOffset"></td>
				</tr>
				<tr>
					<td>
					<label for="CatProperties"><a href="http://api.jquery.com/category/properties/">Properties</a></label></td>
					<td><input name="Cat" type="checkbox" value="Properties" checked id="CatProperties"></td>
				</tr>
				<tr>
					<td>
					<label for="CatSelectors"><a href="http://api.jquery.com/category/selectors/">Selectors</a></label></td>
					<td><input name="Cat" type="checkbox" value="Selectors" checked id="CatSelectors"></td>
					</tr>
				
				<tr>
					<td>
					<label for="CatTraversing"><a href="http://api.jquery.com/category/traversing/">Traversing</a></label></td>
					<td><input name="Cat" type="checkbox" value="Traversing" checked id="CatTraversing"></td>
					</tr>
				<tr>
					<td>
					<label for="CatUtilities"><a href="http://api.jquery.com/category/utilities/">Utilities</a></label></td>
					<td><input name="Cat" type="checkbox" value="Utilities" checked id="CatUtilities"></td>
					</tr>
				<tr>
					<td>
					<label for="CatInternals"><a href="http://api.jquery.com/category/internals/">Internals</a></label></td>
					<td><input name="Cat" type="checkbox" value="Internals" checked id="CatInternals"></td>
					</tr>
				<tr>
					<td>
					<label for="CatSelectAll">Deselect All</label></td>
					<td><input name="Cat" type="checkbox" value="Select All" checked id="CatSelectAll"></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="vfilter">
			<table width="230">
				<thead>
					<tr>
						<th>Attribute</th>
						<th>Display</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><label for="AttrProperty">Property</label></td>
						<td><input name="Attr" type="checkbox" value="Property" id="AttrProperty"
						<cfif ListFindNoCase(url.Attr,"Property")>checked</cfif>
						></td>
					</tr>
					<tr>
						<td><label for="AttrSelector">Selector</label></td>
						<td><input name="Attr" type="checkbox" value="Selector" id="AttrSelector"
						<cfif ListFindNoCase(url.Attr,"Selector")>checked</cfif>
						></td>
					</tr>
					<tr>
						<td><label for="AttrGetter">Getter</label></td>
						<td><input name="Attr" type="checkbox" value="getter" id="AttrGetter"
						<cfif ListFindNoCase(url.Attr,"getter")>checked</cfif>
						></td>
					</tr>
					<tr>
						<td><label for="AttrSetter">Setter</label></td>
						<td><input name="Attr" type="checkbox" value="setter" id="AttrSetter"
						<cfif ListFindNoCase(url.Attr,"setter")>checked</cfif>
						></td>
					</tr>
					<tr>
						<td><label for="AttrMethod">method</label></td>
						<td><input name="Attr" type="checkbox" value="method" id="AttrMethod"
						<cfif ListFindNoCase(url.Attr,"method")>checked</cfif>
						></td>
					</tr>
					<tr>
						<td><label for="AttrRegister">Event Register</label></td>
						<td><input name="Attr" type="checkbox" value="Register" id="AttrRegister"
						<cfif ListFindNoCase(url.Attr,"Register")>checked</cfif>
						></td>
					</tr>
					<tr>
						<td><label for="AttrTrigger">Event Trigger</label></td>
						<td><input name="Attr" type="checkbox" value="Trigger" id="AttrTrigger"
						<cfif ListFindNoCase(url.Attr,"Trigger")>checked</cfif>
						></td>
					</tr>
					<tr>
						<td><label for="AttrJavaScript">JavaScript</label></td>
						<td><input name="Attr" type="checkbox" value="JavaScript" id="AttrJavaScript"
						<cfif ListFindNoCase(url.Attr,"JavaScript")>checked</cfif>
						></td>
					</tr>
					<tr>
						<td><label for="AttrElement">Element</label></td>
						<td><input name="Attr" type="checkbox" value="Element" id="AttrElement"
						<cfif ListFindNoCase(url.Attr,"Element")>checked</cfif>
						></td>
					</tr>
					<tr>
						<td><label for="AttrSetting">Setting</label></td>
						<td><input name="Attr" type="checkbox" value="Setting" id="AttrSetting"
						<cfif ListFindNoCase(url.Attr,"Setting")>checked</cfif>
						></td>
					</tr>
					<tr>
						<td><label for="AttrObject">Object</label></td>
						<td><input name="Attr" type="checkbox" value="Object" id="AttrObject"
						<cfif ListFindNoCase(url.Attr,"Object")>checked</cfif>
						></td>
					</tr>
					<tr>
						<td><label for="AttrSelectAll">Deselect All</label></td>
						<td><input name="Attr" type="checkbox" value="Select All" id="AttrSelectAll"
						<cfif ListFindNoCase(url.Attr,"Select All")>checked</cfif>
						>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="vfilter">
			<table width="247">
				<thead>
				<tr>
					<th scope="col">Returns</th>
					<th scope="col">Display</th>
				</tr>
				</thead>
				<tbody>
				<tr>
					<td><label for="RtnAnything">Anything</label></td>
					<td><input name="Returns" type="checkbox" value="Anything" checked id="RtnAnything"></td>
				</tr>
				<tr>
					<td><label for="RtnArray">Array</label></td>
					<td><input name="Returns" type="checkbox" value="Array" checked id="RtnArray"></td>
				</tr>
				<tr>
					<td><label for="RtnBoolean"><a href="http://docs.jquery.com/Types#Boolean">Boolean</a></label></td>
					<td><input name="Returns" type="checkbox" value="Boolean" checked id="RtnBoolean"></td>
				</tr>
				<tr>
					<td><label for="RtnDeferred"><a href="http://api.jquery.com/category/deferred-object/">Deferred</a></label></td>
					<td><input name="Returns" type="checkbox" value="Deferred" checked id="RtnDeferred"></td>
				</tr>
				<tr>
					<td><label for="RtnElement">Element</label></td>
					<td><input name="Returns" type="checkbox" value="Element" checked id="RtnElement"></td>
				</tr>
				<tr>
					<td><label for="RtnFilter">Filter</label></td>
					<td><input name="Returns" type="checkbox" value="Filter" checked id="RtnFilter"></td>
				</tr>
				<tr>
					<td><label for="RtnFunction">Function</label></td>
					<td><input name="Returns" type="checkbox" value="Function" checked id="RtnFunction"></td>
				</tr>
				<tr>
					<td><label for="RtnInteger">Integer</label></td>
					<td><input name="Returns" type="checkbox" value="Integer" checked id="RtnInteger"></td>
				</tr>
				<tr>
					<td><label for="RtnjQuery"><a href="http://docs.jquery.com/Types#jQuery">jQuery Object</a></label></td>
					<td><input name="Returns" type="checkbox" value="jQuery" checked id="RtnjQuery"></td>
					</tr>
				<tr>
					<td><label for="RtnEventObject">Event Object</label></td>
					<td><input name="Returns" type="checkbox" value="Event Object" checked id="RtnEventObject">
				</td>
				</tr>
				<tr>
					<td><label for="RtnjqXHR">jqXHR</label></td>
					<td><input name="Returns" type="checkbox" value="jqXHR" checked id="RtnjqXHR"></td>
				</tr>
				<tr>
					<td><label for="RtnMap">map</label></td>
					<td><input name="Returns" type="checkbox" value="Map" checked id="RtnMap"></td>
				</tr>
				<tr>
					<td><label for="RtnNumber">Number</label></td>
					<td><input name="Returns" type="checkbox" value="Number" checked id="RtnNumber"></td>
				</tr>
				<tr>
					<td><label for="RtnObject">Object</label></td>
					<td><input name="Returns" type="checkbox" value="Object" checked id="RtnObject"></td>
				</tr>
				<tr>
					<td><label for="RtnPromise">Promise</label></td>
					<td><input name="Returns" type="checkbox" value="Promise" checked id="RtnPromise"></td>
					</tr>
				<tr>
					<td><label for="RtnString">String</label></td>
					<td><input name="Returns" type="checkbox" value="String" checked id="RtnString"></td>
				</tr>
				<tr>
					<td><label for="RtnUndefined">Undefined</label></td>
					<td><input name="Returns" type="checkbox" value="Undefined" checked id="RtnUndefined"></td>
				</tr>
				<tr>
					<td><label for="RtnXMLDocument">XMLDocument</label></td>
					<td><input name="Returns" type="checkbox" value="XMLDocument" checked id="RtnXMLDocument"></td>
				</tr>
				<tr>
					<td><label for="RtnNA">n/a</label></td>
					<td><input name="Returns" type="checkbox" value="n/a" checked id="RtnNA"></td>
				</tr>
				<tr>
					<td><label for="RtnSelectAll">Deselect All</label></td>
					<td><input name="Returns" type="checkbox" value="Select All" checked id="RtnSelectAll"></td>
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
</div>
--->
