<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<table>
	<thead>
		<tr>
			<th>Category</th>
			<th>Sub Category</th>
			<th>Attribute</th>
			<th>Usage</th>
			<th>Topic</th>
			<th>Example</th>
			<th>Notes</th>
			<th>Returns</th>
		</tr>
	</thead>
	<tbody>
	<tr>
		<td>jQuery</td>
		<td>Load</td>
		<td>Element</td>
		<td>Intro</td>
		<td>Google</td>
		<td><a href="jQuery/Google.Load.cfm">How I load jQuery </a><br /></td>
		<td><a href="http://code.google.com/apis/libraries/">Google</a> CDN</td>
		<td>Function</td>
	</tr>
	<tr>
		<td>JavaScript</td>
		<td>Load</td>
		<td>Element</td>
		<td>Intro</td>
		<td>Script</td>
		<td><a href="JavaScript/Script.cfm">How I load JavaScript</a><br /></td>
		<td>Put your code before &lt;/body&gt;</td>
		<td>Function</td>
	</tr>
	<tr>
		<td>JavaScript</td>
		<td>Load</td>
		<td>JavaScript</td>
		<td>Intro</td>
		<td>console</td>
		<td><a href="JavaScript/ConsoleLog.cfm">How to use console.log</a></td>
		<td>Fundamental for inspecting variables and tracing code execution</td>
		<td>n/a</td>
	</tr>
	<tr>
		<td>JavaScript</td>
		<td>&nbsp;</td>
		<td>JavaScript</td>
		<td>Begin</td>
		<td>console</td>
		<td><a href="JavaScript/ConsoleDir.cfm">How to use console.dir</a></td>
		<td>console.dir(jQuery.prototype)</td>
		<td>n/a</td>
	</tr>
	<tr>
		<td>JavaScript</td>
		<td>&nbsp;</td>
		<td>JavaScript</td>
		<td>Inter</td>
		<td>console</td>
		<td><a href="JavaScript/ConsoleDirXML.cfm">How to use console.dirxml</a></td>
		<td>&nbsp;</td>
		<td>n/a</td>
	</tr>
	<tr>
		<td>JavaScript</td>
		<td>&nbsp;</td>
		<td>method</td>
		<td>Begin</td>
		<td>console</td>
		<td><a href="JavaScript/log.cfm">How to write your own log function.</a></td>
		<td>Define log()  to sent output to console.log.</td>
		<td>Function</td>
	</tr>
	
	<tr>
		<td>JavaScript</td>
		<td>&nbsp;</td>
		<td>method</td>
		<td>Intro</td>
		<td>console</td>
		<td><a href="jQuery/PRINT.cfm">The PRINT function</a></td>
		<td>Send output to the console and the page itself.</td>
		<td>Function</td>
	</tr>
	<tr>
		<td>Core</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery/#jQuery1">$</a></td>
		<td>var X = jQuery();</td>
		<td>No parameters</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Core</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Intro</td>
		<td><a href="http://api.jquery.com/jQuery/#jQuery1">$</a></td>
		<td><a href="Core/jQuerySelector.cfm">Example</a></td>
		<td>$(selector)</td>
		<td>jQuery</td>
	</tr>
	
	<tr>
		<td>Core</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/jQuery/#jQuery1">$</a></td>
		<td><a href="Core/jQuerySelectorContext.cfm">Example</a></td>
		<td>$(selector,context)<br>
		See: find		</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Core</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/jQuery/#jQuery1">$</a></td>
		<td><a href="Core/jQueryElement.cfm">Example</a></td>
		<td>$(element)</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Core</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery/#jQuery1">$</a></td>
		<td>&nbsp;</td>
		<td>$(elementArray)</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Core</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/jQuery/#jQuery1">$</a></td>
		<td><a href="Core/jQueryjQueryObject.cfm">Example</a></td>
		<td>$(jQuery object)</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Core</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/jQuery/#jQuery2">$</a></td>
		<td>&nbsp;</td>
		<td>html</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Core</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery/#jQuery2">$</a></td>
		<td>&nbsp;</td>
		<td>html, ownerDocument</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Core</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery/#jQuery2">$</a></td>
		<td>&nbsp;</td>
		<td>html, props</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Core</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/jQuery/#jQuery3">$</a></td>
		<td><a href="Core/jQueryCallback.cfm">Example</a></td>
		<td>Callback</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Attribute</td>
		<td>selector</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/attribute-ends-with-selector/">$=</a></td>
		<td>var X = $('input[name$=&quot;txt&quot;]');</td>
		<td>Attribute ends with<br>
			Inputs where name ends with txt</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Basic</td>
		<td>selector</td>
		<td>Intro</td>
		<td><a href="http://api.jquery.com/class-selector/">.</a></td>
		<td><a href="Selectors/Intro/Class.cfm">Example</a></td>
		<td>The class selector</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Basic</td>
		<td>selector</td>
		<td>Intro</td>
		<td><a href="http://api.jquery.com/id-selector/">#</a></td>
		<td><a href="Selectors/Intro/ID.cfm">Example</a></td>
		<td>The id selector</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Basic</td>
		<td>selector</td>
		<td>Intro</td>
		<td><a href="http://api.jquery.com/multiple-selector/">,</a></td>
		<td><a href="Selectors/Intro/Multiple.cfm">Example</a></td>
		<td>The multiple selector<br>
			See .add()</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Basic</td>
		<td>selector</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/next-adjacent-Selector/">+</a></td>
		<td><a href="Selectors/Basic/Plus.cfm">Example</a></td>
		<td>All inputs that are next to a label</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Hierarchy</td>
		<td>selector</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/next-siblings-selector/">~</a></td>
		<td><a href="Selectors/Hierarchy/NextSibling.cfm">Example</a></td>
		<td>All table cells after the 3rd table cell</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>faq</td>
		<td>JavaScript</td>
		<td>Adv</td>
		<td><a href="http://docs.jquery.com/Frequently_Asked_Questions#How_do_I_select_an_element_by_an_ID_that_has_characters_used_in_CSS_notation.3F">\\</a></td>
		<td>var X = $('#3\\.14');</td>
		<td>&lt;p id=&quot;3.14&quot;&gt;PI&lt;/p&gt;</td>
		<td>n/a</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Basic</td>
		<td>selector</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/all-selector/">*</a></td>
		<td><a href="Selectors/Basic/Star.cfm">Example</a></td>
		<td>selects everything</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Selectors</td>
		<td>Hierarchy</td>
		<td>selector</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/child-selector/">&gt;</a></td>
		<td>var X = $('#myID &gt; li');</td>
		<td>Child selector</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Selectors</td>
		<td>Attribute</td>
		<td>selector</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/attribute-contains-prefix-selector/">|=</a></td>
		<td>var X = $('a[hreflang|=&quot;en&quot;]');</td>
		<td>Attribute contains prefix<br>			
			where 
			hreflang=&quot;en&quot; or begins with &quot;en-&quot;</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Selectors</td>
		<td>Attribute</td>
		<td>selector</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/attribute-contains-selector/">*=</a></td>
		<td>var X = $('input[name*=&quot;xxx&quot;]');</td>
		<td>Attribute contains<br>
			inputs where name has xxx in it</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Selectors</td>
		<td>Attribute</td>
		<td>selector</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/attribute-contains-word-selector/">~=</a></td>
		<td>var X = $('input[val~=&quot;Senn&quot;]);</td>
		<td>Attribute contains word</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Selectors</td>
		<td>Attribute</td>
		<td>selector</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/attribute-equals-selector/">=</a></td>
		<td><a href="Selectors/Attribute/Equals.cfm">Example</a></td>
		<td>Attribute equals<br>
			input whose name is Save clicked</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Selectors</td>
		<td>Attribute</td>
		<td>selector</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/attribute-not-equal-selector/">!=</a></td>
		<td>$('td[class!=&quot;myClass&quot;]);</td>
		<td>Attribute not equal to<br>
			Use .not instead</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Selectors</td>
		<td>Attribute</td>
		<td>selector</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/attribute-starts-with-selector/">^=</a></td>
		<td>var X = $('input[name^=&quot;my&quot;]');</td>
		<td>Attribute starts with<br>
			Use classes if you can</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Selectors</td>
		<td>Hierarchy</td>
		<td>selector</td>
		<td>Intro</td>
		<td><a href="http://api.jquery.com/descendant-selector/">(space)</a></td>
		<td><a href="Selectors/Intro/Descendant.cfm">Example</a></td>
		<td>Descendant Selector</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Selectors</td>
		<td>Attribute</td>
		<td>selector</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/has-attribute-selector/">[]</a></td>
		<td><a href="Selectors/Attribute/HasAnAttribute.cfm">Example</a></td>
		<td>			Any paragraph that has an id</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>&nbsp;</td>
		<td>selector</td>
		<td>Inter</td>
		<td>[]</td>
		<td><a href="Selectors/Intro/p.cfm">Example</a></td>
		<td>The 1st element in the jQuery object has index=0</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Attribute</td>
		<td>selector</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/multiple-attribute-selector/">[][]</a></td>
		<td><a href="Selectors/Attribute/Multiple.cfm">Example</a></td>
		<td>Inputs that have an id and are type=&quot;checkbox&quot;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>&nbsp;</td>
		<td>JavaScript</td>
		<td>Inter</td>
		<td><a href="http://james.padolsey.com/javascript/things-you-may-not-know-about-jquery/">[0]</a></td>
		<td><a href="Selectors/Intermediate/Exists.cfm">Example</a></td>
		<td>See if a jQuery collection contains any elements</td>
		<td>undefined</td>
	</tr>
	<tr id="a">
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/links.html#edef-A">a</a></td>
		<td><a href="Selectors/Intro/a.cfm">Example</a></td>
		<td>			An array of every anchor tag.</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/text.html#edef-ABBR">abbr</a></td>
		<td>&nbsp;</td>
		<td>Abbreviated elements</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-level Interface</td>
		<td>setting</td>
		<td>inter</td>
		<td>Round trip</td>
		<td><a href="Ajax/RoundTrip/Checkbox.cfm">Example</a></td>
		<td>Show all cities within a state</td>
		<td>n/a</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>accepts</td>
		<td>&nbsp;</td>
		<td>See: ajaxSetup</td>
		<td>map</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/text.html#edef-ACRONYM">acronym</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Miscellaneous Traversing</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/add/">add</a></td>
		<td><a href="Traversing/MiscellaneousTraversing/addSelector.cfm">Example</a></td>
		<td>list items and class=&quot;myClass&quot;<br>
		.add( selector )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Miscellaneous Traversing</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/add/">add</a></td>
		<td><a href="Traversing/MiscellaneousTraversing/addElement.cfm">Example</a></td>
		<td>list items and also paragraphs
		<br>
		.add( elements )		</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Miscellaneous Traversing</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/add/">add</a></td>
		<td><a href="Traversing/MiscellaneousTraversing/addHTML.cfm">Example</a></td>
		<td>.add(html)</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Miscellaneous Traversing</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/add/">add</a></td>
		<td><a href="Traversing/MiscellaneousTraversing/addjQuery.cfm">Example</a></td>
		<td>.add( jQuery object )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Miscellaneous Traversing</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/add/">add</a></td>
		<td><a href="Traversing/MiscellaneousTraversing/addSelectorContext.cfm">Example</a></td>
		<td>.add( selector, context )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Attributes</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Intro</td>
		<td><a href="http://api.jquery.com/addClass/">addClass</a></td>
		<td><a href="Attributes/addClass.cfm">Example</a></td>
		<td>.addClass( className )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>Class Attribute</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/addClass/">addClass</a></td>
		<td>$('p').addClass('myClass1 myClass2');</td>
		<td>&lt;p&gt; becomes:<br>
			&lt;p class=&quot;myClass1 myClass2&quot;&gt;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>css</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/addClass/">addClass</a></td>
		<td>$('p').addClass(function(index,X) {<br>
			&nbsp;&nbsp;&nbsp;log(index,X,this); <br>
			});</td>
		<td>.addClass( function(index, currentClass) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/global.html#edef-ADDRESS">address</a></td>
		<td>&nbsp;</td>
		<td>information on author</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Insertion, outside</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/after/">after</a></td>
		<td><a href="Manipulation/DOMInsertionOutside/After.cfm">Example</a></td>
		<td>&lt;p&gt;Paragraph&lt;/p&gt;&lt;a href=&quot;#top&quot;&gt;Top&lt;/a&gt;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Insertion, outside</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/after/">after</a></td>
		<td>$('p').after(function(index) {<br>
			&nbsp;&nbsp;&nbsp;log(index,this);<br>
			});</td>
		<td>.after( function(index) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>trigger</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.ajax/">ajax</a></td>
		<td>jQuery.ajax();</td>
		<td>Defaults to the current page<br>
			See: ajaxSetup</td>
		<td>jqXHR</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>trigger</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/jQuery.ajax/">ajax</a></td>
		<td><a href="Ajax/LowLevelInterface/AjaxURL.cfm">Example</a></td>
		<td>jQuery.ajax(url)</td>
		<td>jqXHR</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>trigger</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/jQuery.ajax/">ajax</a></td>
		<td><a href="Ajax/LowLevelInterface/AjaxURLSettings.cfm">Example</a></td>
		<td>jQuery.ajax(url,  settings)</td>
		<td>jqXHR</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>trigger</td>
		<td>Intro</td>
		<td><a href="http://api.jquery.com/jQuery.ajax/">ajax</a></td>
		<td><a href="Ajax/LowLevelInterface/ajaxSettings.cfm">Example</a>
			<p>&nbsp;</p></td>
		<td>$.ajax(settings)</td>
		<td>jqXHR</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Global Ajax Event Handlers</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/ajaxComplete/">ajaxComplete</a></td>
		<td><a href="Ajax/GlobalAjaxEventHandlers/ajaxComplete.cfm">Example</a></td>
		<td>			.ajaxComplete(handler(event, XMLHttpRequest, ajaxOptions)<br>
			)</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/ajaxError/">ajaxError</a></td>
		<td><a href="Ajax/GlobalAjaxEventHandlers/AjaxError.cfm">Example</a></td>
		<td>A=The event<br>
			B=A jqXHR object<br>
			C=ajaxSettings<br>
			D=exception</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>register</td>
		<td>No</td>
		<td>ajaxError</td>
		<td>$('#myID').bind('ajaxError', function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X,this);<br>
			});</td>
		<td>Use the .ajaxError Global Ajax Event handler</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>register</td>
		<td>Adv</td>
		<td>ajaxPrefilter</td>
		<td>&nbsp;</td>
		<td>jQuery.ajaxPrefilter(handler(options, originalOptions, jqXHR) )</td>
		<td>undefined</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>register</td>
		<td>Adv</td>
		<td>ajaxPrefilter</td>
		<td>&nbsp;</td>
		<td>jQuery.ajaxPrefilter( dataTypes, handler(options, originalOptions, jqXHR) )</td>
		<td>undefined</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Global Ajax Event Handlers</td>
		<td>register</td>
		<td>Adv</td>
		<td>ajaxSend</td>
		<td><a href="Ajax/GlobalAjaxEventHandlers/AjaxSend.cfm">Example</a></td>
		<td> before an Ajax request is sent</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>&nbsp;</td>
		<td>setting</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.param/">ajaxSettings</a></td>
		<td>jQuery.ajaxSettings.traditional = true;</td>
		<td>style of <a href="http://api.jquery.com/jQuery.param">param serialization</a></td>
		<td>n/a</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>register</td>
		<td>Intro</td>
		<td><a href="http://api.jquery.com/jQuery.ajaxSetup/">ajaxSetup</a></td>
		<td><a href="Ajax/LowLevelInterface/ajaxSetup.cfm">Example</a></td>
		<td>Supplies  defaults for  $.ajax</td>
		<td>n/a</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Global Ajax Event Handlers</td>
		<td>register</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/ajaxStart/">ajaxStart</a></td>
		<td><a href="Ajax/GlobalAjaxEventHandlers/AjaxStart.cfm">Example</a></td>
		<td>when the first Ajax request begins<br>
			Event to show animated gif</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Global Ajax Event Handlers</td>
		<td>register</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/ajaxStop/">ajaxStop</a></td>
		<td><a href="Ajax/GlobalAjaxEventHandlers/AjaxStop.cfm">Example</a></td>
		<td>all Ajax requests have completed<br>
			Event to hide animated gif</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Global Ajax Event Handlers</td>
		<td>register</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/ajaxSuccess/">ajaxSuccess</a></td>
		<td><a href="Ajax/GlobalAjaxEventHandlers/ajaxSuccess.cfm">Example</a></td>
		<td>For each Ajax request</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td>altKey</td>
		<td><a href="Events/EventObject/altKey.cfm">Example</a></td>
		<td>&nbsp;</td>
		<td>boolean</td>
	</tr>
	<tr>
		<td>Deferred</td>
		<td>&nbsp;</td>
		<td>method</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/deferred.always/">always</a></td>
		<td><a href="DeferredObject/always.cfm">Example</a></td>
		<td>Adds handlers</td>
		<td>Deferred</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Miscellaneous Traversing</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/andSelf/">andSelf</a></td>
		<td><a href="Traversing/MiscellaneousTraversing/andSelf.cfm">Example</a></td>
		<td>greater than or equal to the 3rd table cell</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Custom</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/animate/">animate</a></td>
		<td><a href="Effects/Custom/AnimateProperties.cfm">Example</a></td>
		<td>.animate( properties)</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Custom</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/animate/">animate</a></td>
		<td><a href="Effects/Custom/AnimatePropertiesDuration.cfm">Example</a></td>
		<td>.animate( properties, [ duration ] )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Custom</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/animate/">animate</a></td>
		<td><a href="Effects/Custom/AnimatePropertiesDurationEasing.cfm">Example</a></td>
		<td>.animate( properties,  duration, <a href="http://jqueryui.com/demos/effect/easing.html">easing</a> )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Custom</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/animate/">animate</a></td>
		<td>var X = {};<br />
			X.height = 38;<br />
			X.left = 650;<br />
			$('p').animate(X,'slow','swing',function() {<br>
	&nbsp;&nbsp;&nbsp;log(this);<br>
			});</td>
		<td>Must have:<br />
			position:relative; or<br />
			position:absolute; <br /></td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Custom</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/animate/">animate</a></td>
		<td>$('#book').animate({     <br>
			&nbsp;&nbsp;&nbsp;width: 'toggle',     height: 'toggle' <br>
			}, 
			{     <br>
	&nbsp;&nbsp;&nbsp;duration: 5000,     specialEasing: {       <br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; width: 'linear',       height: 'easeOutBounce'     <br>
	&nbsp;&nbsp;&nbsp; },complete: function() {       <br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $(this).after('&lt;div&gt;Animation complete.&lt;/div&gt;');     <br>
	&nbsp;&nbsp;&nbsp; }   <br>
			});</td>
		<td>Easings are in: <a href="http://jqueryui.com/demos/effect/#easing">jQueryUI</a></td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Extension</td>
		<td>selector</td>
		<td>Adv</td>
		<td>animated</td>
		<td><a href="http://api.jquery.com/animated-selector/">Example</a></td>
		<td>Selects elements that are in the process of animation</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Insertion, Inside</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/append/">append</a></td>
		<td><a href="Manipulation/DOMInsertionInside/AppendFunction.cfm">Example</a></td>
		<td>Puts a counter at the end of every paragraph</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Insertion, Inside</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/append/">append</a></td>
		<td><a href="Manipulation/DOMInsertionInside/Append.cfm">Example</a></td>
		<td>&lt;p&gt;Paragraph&lt;a href=&quot;#top&quot;&gt;Top&lt;/a&gt;&lt;/p&gt;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Insertion, Inside</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/appendTo/">appendTo</a></td>
		<td><a href="Manipulation/DOMInsertionInside/AppendTo.cfm">Example</a></td>
		<td>&lt;p&gt;Paragraph&lt;a href=&quot;#top&quot;&gt;Top&lt;/a&gt;&lt;/p&gt;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/TR/html4/struct/objects.html#edef-APPLET">applet</a></td>
		<td>&nbsp;</td>
		<td>Java applet</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/objects.html#edef-AREA">area</a></td>
		<td>&nbsp;</td>
		<td>client-side image map area</td>
		<td>jQuery</td>
	</tr>
	
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>Property</td>
		<td>Adv</td>
		<td>async</td>
		<td><a href="Ajax/LowLevelInterface/async.cfm">Example</a></td>
		<td>Default:true</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Attributes</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/attr/#attr1">attr</a></td>
		<td><a href="Attributes/Attr.cfm">Example</a></td>
		<td>the title attribute for the first abbr</td>
		<td>string</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>Attribute</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/attr/#attr2">attr</a></td>
		<td><a href="Manipulation/Attribute/attr.cfm">Example</a></td>
		<td>Sets the alt attribute for all imgs</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>Attribute</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/attr/#attr2">attr</a></td>
		<td><a href="Manipulation/Attribute/attrObject.cfm">Example</a></td>
		<td>var myAttr = {};<br>
myAttr.alt = 'my alt attribute goes here';<br>
myAttr.width = 80;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>Attribute</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/attr/#attr2">attr</a></td>
		<td><a href="Manipulation/Attribute/attrAttributeNameFunction.cfm">Example</a></td>
		<td>.attr( attributeName, function(index, attr) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>Attribute</td>
		<td>setter</td>
		<td>No</td>
		<td>attr</td>
		<td>$('input[type=submit]').attr('type','button');</td>
		<td><a href="http://dev.jquery.it/ticket/7203">$('input[type=submit]')[0].setAttribute('type','button');</a></td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>Attribute</td>
		<td>getter</td>
		<td>No</td>
		<td>attr</td>
		<td>$(this).attr('id');</td>
		<td>use this.id instead<br>There's no need to wrap it in jQuery if it's a property of the DOM element</td>
		<td>string</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/TR/2000/REC-DOM-Level-2-Events-20001113/events.html#Events-MutationEvent">attrChange</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>Integer</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/TR/DOM-Level-3-Events/#event-type-DOMAttrModified">attrName</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>String</td>
	</tr>
	<tr id="b">
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/present/graphics.html#edef-B">b</a></td>
		<td><a href="Selectors/Intro/b.cfm">Example</a></td>
		<td>bold text style</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/TR/html4/struct/links.html#edef-BASE">base</a></td>
		<td>&nbsp;</td>
		<td>document base URI</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/TR/html4/present/graphics.html#edef-BASEFONT">basefont</a></td>
		<td>&nbsp;</td>
		<td>base font size</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/TR/html4/struct/dirlang.html#edef-BDO">bdo</a></td>
		<td>&nbsp;</td>
		<td>I18N BiDi over-ride</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Insertion, Outside</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/before/">before</a></td>
		<td><a href="Manipulation/DOMInsertionOutside/Before.cfm">Example</a></td>
		<td>&lt;a href=&quot;#top&quot;&gt;Top&lt;/a&gt;&lt;p&gt;Paragraph&lt;/p&gt;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Insertion, Outside</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/before/">before</a></td>
		<td>&nbsp;</td>
		<td>.before( function )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>Register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.ajax#jQuery-ajax-settings">beforeSend</a></td>
		<td>&nbsp;</td>
		<td>beforeSend(jqXHR, settings)<br>
			returning false will cancel the request</td>
		<td>function</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/present/graphics.html#edef-BIG">big</a></td>
		<td><a href="Selectors/Intro/big.cfm">Example</a></td>
		<td>large text style</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/bind/">bind</a></td>
		<td>$('p').bind('myEventType',function(myEvent) {<br />
			&nbsp;&nbsp;&nbsp;log(this); <br />
			});</td>
		<td>For custom event types. <br>
			Otherwise use the shortcut corresponding to myEventType</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/bind/">bind</a></td>
		<td>$('p').bind('myEventType',myEventData,function(myEvent) {<br />
			&nbsp;&nbsp;&nbsp;log(this); <br />
			});</td>
		<td>.bind( eventType, eventData, handler(eventObject) )<br>
			eventData is not commonly used</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/bind/">bind</a></td>
		<td>$('p').bind('myEventType',false);</td>
		<td>.bind( eventType,  false )</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/bind/">bind</a></td>
		<td>$('p').bind('myEventType',myEventData,false);</td>
		<td>.bind( eventType, eventData, false )<br>
			eventData is not commonly used</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/bind/">bind</a></td>
		<td>&nbsp;</td>
		<td>.bind( events )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/text.html#edef-BLOCKQUOTE">blockquote</a></td>
		<td><a href="Selectors/Intro/blockquote.cfm">Example</a></td>
		<td>long quotation</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Form Events</td>
		<td>register</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/blur/">blur</a></td>
		<td><a href="Events/FormEvents/Blur.cfm">Example</a></td>
		<td>$('input').blur(function(myEvent) {});</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Forms</td>
		<td>&nbsp;</td>
		<td>register</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/blur/">blur</a></td>
		<td>&nbsp;</td>
		<td>eventData is not commonly used</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Forms</td>
		<td>&nbsp;</td>
		<td>trigger</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/blur/">blur</a></td>
		<td>$('#myID').blur();</td>
		<td>Triggers the blur event</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/global.html#edef-BODY">body</a></td>
		<td><a href="Selectors/Intro/body.cfm">Example</a></td>
		<td>document body</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/text.html#edef-BR">br</a></td>
		<td><a href="Selectors/Intro/br.cfm">Example</a></td>
		<td>forced line break</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Properties</td>
		<td>Global jQuery</td>
		<td>Property</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/jQuery.browser/#jQuery-browser1">browser</a></td>
		<td>var X =  jQuery.browser;</td>
		<td>map</td>
		<td>Map</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.browser/#jQuery-browser2">browser</a></td>
		<td> var X = jQuery.browser.version;</td>
		<td>&nbsp;</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td>bubbles</td>
		<td><a href="Events/EventObject/bubbles.cfm">Example</a></td>
		<td><a href="http://www.w3.org/TR/DOM-Level-3-Events/#event-flow">Event Flow</a></td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Form</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/interact/forms.html#edef-BUTTON">button</a></td>
		<td><a href="Selectors/Form/button.cfm">Example</a></td>
		<td>push button</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td>button</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Extension</td>
		<td>selector</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/button-selector/">button</a></td>
		<td><a href="Selectors/Extension/Button.cfm">Example</a></td>
		<td>&lt;button&gt;myButton&lt;/button&gt;<br>
			&lt;input type=&quot;button&quot;&gt;</td>
		<td>filter</td>
	</tr>
	<tr id="c">
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>Property</td>
		<td>Adv</td>
		<td>cache</td>
		<td><a href="Ajax/LowLevelInterface/cache.cfm">Example</a></td>
		<td>if (dataType == 'script' || 'jsonp') {<br>
&nbsp;&nbsp;&nbsp;default=false<br>
} else {
<br>
&nbsp;&nbsp;&nbsp;			default=true<br>}</td>
		<td>Boolean</td>
	</tr>
	
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td>cancelable</td>
		<td><a href="Events/EventObject/cancelable.cfm">Example</a></td>
		<td>&nbsp;</td>
		<td>boolean</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Table</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/tables.html#edef-CAPTION">caption</a></td>
		<td><a href="Selectors/Table/Caption.cfm">Example</a></td>
		<td>table caption</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/present/graphics.html#edef-CENTER">center</a></td>
		<td><a href="Selectors/Intro/center.cfm">Example</a></td>
		<td>shorthand for DIV align=center</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Form Events</td>
		<td>register</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/change/">change</a></td>
		<td><a href="Events/FormEvents/Change.cfm">Example</a></td>
		<td>&nbsp;</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Forms</td>
		<td>&nbsp;</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/change/">change</a></td>
		<td><a href="Forms/changeEventData.cfm">Example</a></td>
		<td>eventData is not commonly used</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Forms</td>
		<td>&nbsp;</td>
		<td>trigger</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/change/">change</a></td>
		<td>$('#myID').change();</td>
		<td>Triggers the change event</td>
		<td>jQuery</td>
		</tr>
	
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td>charCode</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Extension</td>
		<td>selector</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/checkbox-selector/">checkbox</a></td>
		<td>var X = $('form input:checkbox');</td>
		<td>$('input[type=&quot;checkbox&quot;]');</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Extension</td>
		<td>selector</td>
		<td>No</td>
		<td>checked</td>
		<td>$('[name=&quot;someRadioGroup&quot;]:checked').val();</td>
		<td>Use filter(':checked') instead</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Extension</td>
		<td>selector</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/checked-selector/">checked</a></td>
		<td><a href="Selectors/Extension/checked.cfm">Example</a></td>
		<td>filter(':checked')</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/children/">children</a></td>
		<td><a href="Traversing/TreeTraversal/children.cfm">Example</a></td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/children/">children</a></td>
		<td><a href="Traversing/TreeTraversal/childrenSelector.cfm">Example</a></td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/text.html#edef-CITE">cite</a></td>
		<td>&nbsp;</td>
		<td>citation</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Custom</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/clearQueue/">clearQueue</a></td>
		<td>$('p').clearQueue();</td>
		<td>See: stop</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Data</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/clearQueue/">clearQueue</a></td>
		<td>$('p').clearQueue('fx');</td>
		<td>Queue Name</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/clearQueue/">clearQueue</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>register</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/click/">click</a></td>
		<td><a href="Events/MouseEvents/click.cfm">Example</a></td>
		<td>When the mouse pointer is over the element, and the  button is pressed and released</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>register</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/click/">click</a></td>
		<td>var X = {};<br>
			$('p').click(X,function(myEvent) {<br>
			&nbsp;&nbsp;&nbsp;log(myEvent,this);<br>
			});</td>
		<td>eventData is not commonly used</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>trigger</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/click/">click</a></td>
		<td>$('#myID').click();</td>
		<td>Trigger the click event</td>
		<td>jQuery</td>
	</tr>
	
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td>clientX</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td>clientY</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>Copying</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/clone/">clone</a></td>
		<td><a href="Events/MouseEvents/Clone.cfm">Example</a></td>
		<td>Event handlers  are not copied to the clone</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>Copying</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/clone/">clone</a></td>
		<td>&nbsp;</td>
		<td>.clone(withDataAndEvents)</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>Copying</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/clone/">clone</a></td>
		<td>&nbsp;</td>
		<td>.clone( withDataAndEvents,deepWithDataAndEvents )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/closest/#closest1">closest</a></td>
		<td><a href="Traversing/TreeTraversal/closest.cfm">Example</a></td>
		<td>.closest(selector)</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/closest/#closest1">closest</a></td>
		<td>&nbsp;</td>
		<td>.closest(selector,context)</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/closest/#closest1">closest</a></td>
		<td>var X = $('#myID tr');<br>
			$('td').closest(X);</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/closest/#closest1">closest</a></td>
		<td>var X = $('td').closest('tr');</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/closest/#closest2">closest</a></td>
		<td>$('aside').closest('h1,h2,h3,h4,h5,h6', '#myID');</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/text.html#edef-CODE">code</a></td>
		<td>&nbsp;</td>
		<td>a fragment of computer code.</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/tables.html#edef-COL">col</a></td>
		<td>&nbsp;</td>
		<td>table column</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/tables.html#edef-COLGROUP">colgroup</a></td>
		<td>&nbsp;</td>
		<td>table column group</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/jQuery.ajax#jQuery-ajax-settings">complete</a></td>
		<td>&nbsp;</td>
		<td>complete(jqXHR, textStatus)</td>
		<td>function</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/jQuery.ajax#jQuery-ajax-settings">complete</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>Array</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Content Filter</td>
		<td>selector</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/contains-selector/">contains</a></td>
		<td>$('td:contains(&quot;Phillip Senn&quot;)').addClass('myClass');</td>
		<td>&lt;td class=&quot;myClass&quot;&gt;Phillip Senn&lt;/td&gt;</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.contains/">contains</a></td>
		<td>&lt;p class=&quot;myClass&gt;&lt;div id=&quot;myID&quot;&gt;&lt;/div&gt;&lt;/p&gt;
			<p>			var X = jQuery.contains('#myID', '.myClass');</p></td>
		<td>true</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>contents</td>
		<td>ctrlKey</td>
		<td>how to parse the response</td>
		<td>map</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Miscellaneous Traversing</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/contents/">contents</a></td>
		<td>var X = $('p').contents();</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>contentType</td>
		<td>&nbsp;</td>
		<td>Default: 'application/x-www-form-urlencoded'</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Internals</td>
		<td>&nbsp;</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/context/">context</a></td>
		<td>var X = $('p',document.body);<br>
			log(X.context);</td>
		<td>The DOM  passed to jQuery.<br>
			Default: document</td>
		<td>Element</td>
	</tr>
	<tr>
		<td>Properties</td>
		<td>Properties of jQuery Object Instances</td>
		<td>property</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/context/">context</a></td>
		<td>$(&quot;ul&quot;, document.body).context.nodeName</td>
		<td>&nbsp;</td>
		<td>Element</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.ajax/">context</a></td>
		<td><a href="Ajax/LowLevelInterface/context.cfm">Example</a></td>
		<td>the context of all Ajax-related callbacks</td>
		<td>Object</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>converters</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>Map</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>crossDomain</td>
		<td>&nbsp;</td>
		<td>Forces a crossDomain request</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>CSS</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/css/#css1">css</a></td>
		<td>var X = $('.myClass').css('fontSize');</td>
		<td>&nbsp;</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>Style Properties</td>
		<td>setter</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/css/#css2">css</a></td>
		<td>$('#myID').css('fontSize','1.3em');</td>
		<td>my.css file contains:<br>
			.myClass { font-size:1.3em}
				<p>my.js file contains: <br>
			$('#myID').addClass('myClass');</p></td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>Style Properties</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/css/#css2">css</a></td>
		<td>$('.myClass1').css('fontSize',function(index,X) {<br>
			&nbsp;&nbsp;&nbsp;log(index,X,this) <br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>Style Properties</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/css/#css2">css</a></td>
		<td>var X = {       <br>
	&nbsp;&nbsp;&nbsp;			'background-color' : 'cornflowerblue',       <br>
	&nbsp;&nbsp;&nbsp; 'color' : '#FFF'     <br>
			}     <br>
			$('p').css(X);</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>CSS</td>
		<td>&nbsp;</td>
		<td>Object</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.cssHooks/">cssHooks</a></td>
		<td>jQuery.cssHooks</td>
		<td>&nbsp;</td>
		<td>Object</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://www.coldfusionjedi.com/index.cfm/2011/8/23/jQuery-Quickie--Noticing-ctrlshift-keyboard-events">ctrlKey</a></td>
		<td><a href="Events/EventObject/ctrlKey.cfm">Example</a></td>
		<td>myEvent.ctrlKey</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/event.currentTarget/">currentTarget</a></td>
		<td>$(&quot;p&quot;).click(function(X) {   <br>
			&nbsp;&nbsp;&nbsp;log(X.currentTarget,this);<br>
			});</td>
		<td>Usually equal. See <a href="http://api.jquery.com/jQuery.proxy">jQuery proxy</a>.</td>
		<td>Element</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>data</td>
		<td><a href="Data/data.cfm">3 Examples</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr id="d">
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>Property</td>
		<td>Intro</td>
		<td><a href="http://api.jquery.com/jQuery.ajax/#jQuery-ajax-settings">data</a></td>
		<td><a href="Ajax/LowLevelInterface/ajaxSettings.cfm">Example</a></td>
		<td> must be 'Key'=Value or 'Key'=Array</td>
		<td>Object</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/event.data/">data</a></td>
		<td>			$(this).bind('click', {A:1,B:2}, function(X){      <br>	
			&nbsp;&nbsp;&nbsp;log(X.data); <br> }); <br></td>
		<td>&nbsp;</td>
		<td>Anything</td>
	</tr>
	<tr>
		<td>Data</td>
		<td>&nbsp;</td>
		<td>method</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.data/#jQuery-data1">data</a></td>
		<td><p><a href="Utilities/jQuery.data.KeyValue.cfm">Example</a></p></td>
		<td>jQuery.data( element, key, value )</td>
		<td>Object</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>method</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.data/#jQuery-data2">data</a></td>
		<td>var X = $('#myID');
			<p>jQuery.data(X,'A',1);<br>
				log(jQuery.data(X,'A'));
				<br>
			jQuery.removeData(X,'A');</p></td>
		<td>jQuery.data( element, key  ) </td>
		<td>Object</td>
	</tr>
	<tr>
		<td>Data</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/data/#data1">data</a></td>
		<td>$('#myID').data('A', 1);<br>
			var X = $('#myID).data('A');</td>
		<td>.data( key, value )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Data</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/data/#data1">data</a></td>
		<td>&nbsp;</td>
		<td>.data( obj)</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Miscellaneous</td>
		<td>Data Storage</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/data/#data2">data</a></td>
		<td>&nbsp;</td>
		<td>.data( key )</td>
		<td>Object</td>
	</tr>
	<tr>
		<td>Miscellaneous</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/data/#data2">data</a></td>
		<td>$('#myID').data('A', 1);<br>
			var myObj = {B:2,C:3};<br>
			
			$('#myID').data('X',myObj);<br>
var X = $('#myID').data();</td>
		<td>A === 1<br>		
						X.B === 2<br>
						X.C === 3</td>
		<td>Object</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>dataFilter</td>
		<td>&nbsp;</td>
		<td>dataFilter(data, dataType)</td>
		<td>Function</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>dataType</td>
		<td>&nbsp;</td>
		<td>xml, json, script, or html</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>register</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/dblclick/">dblclick</a></td>
		<td><a href="Events/MouseEvents/dblclick.cfm">Example</a></td>
		<td>When the element is double-clicked</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>register</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/dblclick/">dblclick</a></td>
		<td><a href="Events/MouseEvents/dblclickEventData.cfm">Example</a></td>
		<td>dblclick( [eventData,] handler(eventObject) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>trigger</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/dblclick/">dblclick</a></td>
		<td>$('#myID').dblclick();</td>
		<td>Trigger the dblclick event</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/lists.html#edef-DD">dd</a></td>
		<td>&nbsp;</td>
		<td>definition description</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Deferred</td>
		<td>Object</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/category/deferred-object/">Deferred</a></td>
		<td>var X = $.Deferred();</td>
		<td>register multiple callbacks into callback queues</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/text.html#edef-del">del</a></td>
		<td>&nbsp;</td>
		<td>deleted text</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Custom</td>
		<td>setter</td>
		<td>Adv</td>
		<td>delay</td>
		<td>$('li').slideUp().delay(1000).next().slideDown();</td>
		<td>Slides up, pauses for 1 second, slides the sibling down</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Custom</td>
		<td>setter</td>
		<td>Adv</td>
		<td>delay</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/delegate/">delegate</a></td>
		<td><a href="Events/EventHandlerAttachment/delegate.cfm">Example</a></td>
		<td>.delegate( selector, eventType, handler )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/delegate/">delegate</a></td>
		<td>&nbsp;</td>
		<td>.delegate( selector, eventType, eventData, handler )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/delegate/">delegate</a></td>
		<td>&nbsp;</td>
		<td>.delegate( selector, events )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Custom</td>
		<td>trigger</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/dequeue/">dequeue</a></td>
		<td>$('#myID').queue(function () { <br>
	&nbsp;&nbsp;&nbsp;log(this);<br>
	&nbsp;&nbsp;&nbsp;$(this).dequeue();   <br>
			});</td>
		<td>Execute the next function on the queue</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Data</td>
		<td>&nbsp;</td>
		<td>trigger</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/dequeue/">dequeue</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>trigger</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/dequeue/">dequeue</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Data</td>
		<td>&nbsp;</td>
		<td>trigger</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/dequeue/">dequeue</a></td>
		<td> $('#myID').queue(function () {         <br>
	&nbsp;&nbsp;&nbsp;			$(this).slideDown(3000);          <br>
	&nbsp;&nbsp;&nbsp; jQuery.dequeue( this );               <br>
			});</td>
		<td>jQuery.dequeue( element)</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>trigger</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/dequeue/">dequeue</a></td>
		<td>&nbsp;</td>
		<td>jQuery.dequeue( element,  queueName  )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Removal</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/detach/">detach</a></td>
		<td>X = $('#myID table').detach();<br>
			X.find('tr').each(function() {});<br>			
			X.appendTo('#myID');</td>
		<td>Optimization</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Removal</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/detach/">detach</a></td>
		<td>&nbsp;</td>
		<td>.detach( [ selector ] )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td>detail</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/TR/html4/struct/text.html#edef-DFN">dfn</a></td>
		<td>&nbsp;</td>
		<td>instance definition</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/die/#die1">die</a></td>
		<td>$('p').live('click',function() {<br>
	&nbsp;&nbsp;&nbsp;alert('ouch!');<br>
			});<br>
			$('p').die();</td>
		<td>Remove  event handlers attached using .live()</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/die/#die2">die</a></td>
		<td>$('p').live('click',function() {<br>
	&nbsp;&nbsp;&nbsp;alert('ouch!');<br>
			});<br>
			$('p').die('click');</td>
		<td>Remove the click event handler</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/die/#die2">die</a></td>
		<td>var X = function() {<br>
	&nbsp;&nbsp;&nbsp;alert('ouch!');<br>
			};<br>
			$('p').live('click',X);<br>
			$('p').die('click',X);</td>
		<td>Remove the function X that was associated with the click handler</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/die/#die2">die</a></td>
		<td>$('p').die({'click','keydown'});</td>
		<td>.die( eventTypes )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/TR/html4/struct/lists.html#edef-DIR">dir</a></td>
		<td>&nbsp;</td>
		<td>directory list</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>form</td>
		<td>selector</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/disabled-selector/">disabled</a></td>
		<td><a href="Selectors/Form/Disabled.cfm">Example</a></td>
		<td>pseudo-class selector</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/global.html#edef-DIV">div</a></td>
		<td>&nbsp;</td>
		<td>generic language/style container</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/lists.html#edef-DL">dl</a></td>
		<td>&nbsp;</td>
		<td>definition list</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>&nbsp;</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/deferred.done">done</a></td>
		<td><a href="DeferredObject/done.cfm">Example</a></td>
		<td>Multiple success handlers</td>
		<td>Deferred</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/lists.html#edef-DT">dt</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr id="e">
		<td>Miscellaneous</td>
		<td>Collection Manipulation</td>
		<td>method</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/jQuery.each/">each</a></td>
		<td>$('a').each(function(index,X) {<br />
			&nbsp;&nbsp;&nbsp;log(index,X,this);<br />
			});		</td>
		<td>X will equal <em>this</em></td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Miscellaneous</td>
		<td>Traversing</td>
		<td>method</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/jQuery.each/">each</a></td>
		<td>$('th').click(function() {<br>
			&nbsp;&nbsp;&nbsp;$(this).siblings.each(function(index,X) {<br>
			&nbsp;&nbsp;&nbsp;});<br>
			});</td>
		<td>index is a simple counter - it doesn't skip.</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Miscellaneous</td>
		<td>&nbsp;</td>
		<td>method</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.each/">each</a></td>
		<td>var myArray = [1,2];
			<p>$.each(myArray, function(index, X) {    <br>
				&nbsp;&nbsp;&nbsp;log(index,X,this);  <br>
			});</p></td>
		<td>jQuery.each( collection, callback(indexInArray, valueOfElement) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Miscellaneous</td>
		<td>&nbsp;</td>
		<td>method</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.each/">each</a></td>
		<td>var X = {};<br>
			X.A = 1;<br>
			X.B = 2;
			<p> $.each(X, function(key,value) {    <br>
				&nbsp;&nbsp;&nbsp;log(key,value,this);<br>
				&nbsp;&nbsp;&nbsp;return true;<br>
				});			</p></td>
		<td>return false will break out of the loop</td>
		<td>jQuery</td>
	</tr>
	
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/text.html#edef-EM">em</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Content Filter</td>
		<td>selector</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/empty-selector/">empty</a></td>
		<td>var X = $(&quot;p:empty&quot;);</td>
		<td>Select paragraphs that have no children or text. See  :parent</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Removal</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/empty/">empty</a></td>
		<td>$('p').empty();</td>
		<td>&lt;p&gt;Paragraph&lt;/p&gt; becomes: <br>			&lt;p&gt;&lt;/p&gt;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>form</td>
		<td>selector</td>
		<td>Inter</td>
		<td>enabled</td>
		<td>&lt;input name=&quot;Save&quot; type=&quot;submit&quot; disabled&gt; <br>
			var X = $('input:enabled');</td>
		<td>&nbsp;</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Miscellaneous Traversing</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/end/">end</a></td>
		<td>$('p').find('.foo').addClass('myClass1').end().find('.bar').addClass('myClass2');</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Extension</td>
		<td>selector</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/eq-selector/">eq</a></td>
		<td>var X = $('p:eq(2)');</td>
		<td>var X = $('p').eq(2);</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/eq/">eq</a></td>
		<td><a href="Traversing/Filtering/eq.cfm">Example</a></td>
		<td>The 3rd paragraph</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/eq/">eq</a></td>
		<td>var X = $('p').eq(-1);</td>
		<td>The last paragraph</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>error</td>
		<td>&nbsp;</td>
		<td>error(jqXHR, textStatus, errorThrown)<br>
			textStatus: null, 'timeout', 'error', 'abort', or 'parsererror'</td>
		<td>Function</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Browser Events</td>
		<td>register</td>
		<td>Adv</td>
		<td>error</td>
		<td>$('p')   .error(function() {     <br>
	&nbsp;&nbsp;&nbsp;			log('Error');<br>
			})</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Events</td>
		<td>Browser Events</td>
		<td>register</td>
		<td>Adv</td>
		<td>error</td>
		<td>&nbsp;</td>
		<td>.error( [ eventData ], handler(eventObject) )</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Internals</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.error/">error</a></td>
		<td>jQuery.error = console.error;</td>
		<td>Override jQuery.error for display in Firebug.</td>
		<td>n/a</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Extension</td>
		<td>selector</td>
		<td>Inter</td>
		<td>even</td>
		<td>var X = $('tr').filter(':even');</td>
		<td>1st, 3rd, 5th</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>&nbsp;</td>
		<td>constructor</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/category/events/event-object/">Event</a></td>
		<td><a href="Events/EventConstructor/Event.cfm">Example</a></td>
		<td>Event(name)</td>
		<td>Event Object</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>&nbsp;</td>
		<td>constructor</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/category/events/event-object/">Event</a></td>
		<td><a href="Events/EventConstructor/EventProperties.cfm">Example</a></td>
		<td>Event(name,properties)</td>
		<td>Event Object</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/category/events/event-object/">event.originalEvent</a></td>
		<td>&nbsp;</td>
		<td>special properties of native elements</td>
		<td>Event Object</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/category/events/event-object/">event.props</a></td>
		<td>&nbsp;</td>
		<td>Makes special properties available in all event objects</td>
		<td>Array</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td>eventPhase</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.extend/">extend</a></td>
		<td> <p><a href="Utilities/jQuery.extend.cfm">Example</a></p>			</td>
		<td>&nbsp;</td>
		<td>Object</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.extend/">extend</a></td>
		<td>$.extend(true, A, B);</td>
		<td>{apple: 0, banana: {weight: 52, price: 200}, cherry: 97, lime: 100}</td>
		<td>Object</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.extend/">extend</a></td>
		<td>&nbsp;</td>
		<td>jQuery.extend(  deep , target, object1,  objectN  )</td>
		<td>Object</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.extend/">extend</a></td>
		<td>&nbsp;</td>
		<td>jQuery.extend(  target, object1,  objectN  )</td>
		<td>Object</td>
	</tr>
	<tr id="f">
		<td>Effects</td>
		<td>Fading</td>
		<td>trigger</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/fadeIn">fadeIn</a></td>
		<td>$('p').fadeIn('slow');</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Fading</td>
		<td>trigger</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/fadeIn">fadeIn</a></td>
		<td>$('p').fadeIn('slow','swing');</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Fading</td>
		<td>trigger</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/fadeIn">fadeIn</a></td>
		<td>$('p').fadeIn('slow','swing',function() {<br>
			&nbsp;&nbsp;&nbsp;log(this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Fading</td>
		<td>trigger</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/fadeOut">fadeOut</a></td>
		<td>$('p').fadeOut('slow');</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Fading</td>
		<td>trigger</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/fadeOut">fadeOut</a></td>
		<td>$('p').fadeOut('slow','swing');</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Fading</td>
		<td>trigger</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/fadeOut">fadeOut</a></td>
		<td>$('p').fadeOut('slow','swing',function() {<br>
			&nbsp;&nbsp;&nbsp;log(this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Fading</td>
		<td>trigger</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/fadeTo">fadeTo</a></td>
		<td>$('p').fadeTo('slow',.01);</td>
		<td>Nearly invisible, but doesn't collapse</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Fading</td>
		<td>trigger</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/fadeTo">fadeTo</a></td>
		<td>$('p').fadeTo('slow',.01,'swing');</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Fading</td>
		<td>trigger</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/fadeTo">fadeTo</a></td>
		<td>$('p').fadeTo('slow',.01,'swing',function() {<br>
			&nbsp;&nbsp;&nbsp;log(this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Fading</td>
		<td>trigger</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/fadeToggle/">fadeToggle</a></td>
		<td>$('p').fadeToggle('slow');</td>
		<td>See: <a href="http://api.jquery.com/promise/#example-1">promise</a></td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Fading</td>
		<td>trigger</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/fadeToggle/">fadeToggle</a></td>
		<td>$('p').fadeToggle('slow','swing');</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Fading</td>
		<td>trigger</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/fadeToggle/">fadeToggle</a></td>
		<td>$('p').fadeToggle('slow','swing',function() {<br>
			&nbsp;&nbsp;&nbsp;log(this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Method</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/deferred.fail">fail</a></td>
		<td><a href="DeferredObject/fail.cfm">Example</a></td>
		<td>Multiple fail handlers</td>
		<td>Deferred</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/interact/forms.html#edef-FIELDSET">fieldset</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Extension</td>
		<td>selector</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/file-selector/">file</a></td>
		<td>var X = $(&quot;input:file&quot;);</td>
		<td>var X = $('input[type=file]');</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/filter/">filter</a></td>
		<td>var X = $('li').filter(':even');</td>
		<td>.filter( selector )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/filter/">filter</a></td>
		<td>$('li').filter(function(index) {<br>
			&nbsp;&nbsp;&nbsp;log(index,this);<br>
			});</td>
		<td>.filter( function(index) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/filter/">filter</a></td>
		<td>var X = $('table').filter('tbody');</td>
		<td>.filter( element )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/filter/">filter</a></td>
		<td>var X = $('.myClass');<br>
			var X = $('table').filter(X);</td>
		<td>.filter( jQuery object )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/find/">find</a></td>
		<td>&nbsp;</td>
		<td>.find( selector )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/find/">find</a></td>
		<td>&nbsp;</td>
		<td>.find( jQuery object )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/find/">find</a></td>
		<td>var X = $('tr:first').find('td');</td>
		<td>.find( element )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Extension</td>
		<td>selector</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/first-selector/">first</a></td>
		<td>var X = $('tr').filter(':first');</td>
		<td>An array of 1 element</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/first/">first</a></td>
		<td>var X = $('tr').first();</td>
		<td>An array of 1 element</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Child filter</td>
		<td>selector</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/first-child-selector/">first-child</a></td>
		<td>var X = $(&quot;p span:first-child&quot;);</td>
		<td>First span in each paragraph</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>jQuery</td>
		<td>Extending jQuery</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://docs.jquery.com/Types#Prototype">fn</a></td>
		<td>jQuery.fn.id = function() {<br />
			&nbsp;&nbsp;&nbsp;return this[0].id;<br />
			}
			<p>var myID = $('.myClass').id();<br />
			</p></td>
		<td>&nbsp;</td>
		<td>n/a</td>
	</tr>
	<tr>
		<td>Inter</td>
		<td>&nbsp;</td>
		<td>Property</td>
		<td>Inter</td>
		<td><a href="http://docs.jquery.com/Types#Prototype">fn</a></td>
		<td>jQuery.fn.jquery</td>
		<td>Case sensitive</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>form</td>
		<td>selector</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/focus-selector/">focus</a></td>
		<td>var X = $('*:focus);</td>
		<td>$(document.activeElement);</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>form</td>
		<td>selector</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/focus-selector/">focus</a></td>
		<td>var X= $('input:focus');</td>
		<td>&nbsp;</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Form Events</td>
		<td>register</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/focus/">focus</a></td>
		<td>$('input').focus(function() {<br>
			&nbsp;&nbsp;&nbsp;log(this);<br>
			});		</td>
		<td>.focus( handler(eventObject) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Form Events</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/focus/">focus</a></td>
		<td>var X = {<br>
			A:1,B:2<br>
			};<br>
			$('input').focus(X,function() {<br>
			&nbsp;&nbsp;&nbsp;log(this.data);<br>
			});		</td>
		<td>.focus( [ eventData ], handler(eventObject) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Forms</td>
		<td>&nbsp;</td>
		<td>trigger</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/focus/">focus</a></td>
		<td>$('#myID').focus();</td>
		<td>Triggers the focus event</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Keyboard Events</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/focusin/">focusin</a></td>
		<td><a href="Events/KeyboardEvents/focusin.cfm">Example</a><br></td>
		<td>.focusin( handler(eventObject) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/focusin/">focusin</a></td>
		<td>var X = {A:1,B:2};<br>
			$('p').focusin(X,function() {<br>
			&nbsp;&nbsp;&nbsp;			log(this.data);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Keyboard Events</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/focusout/">focusout</a></td>
		<td><a href="Events/KeyboardEvents/focusout.cfm">Example</a><br></td>
		<td>supports  bubbling<br>
			see focusin</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/focusout/">focusout</a></td>
		<td>var X = {A:1,B:2};<br>
			$('p').focusout(X,function() {<br>
			&nbsp;&nbsp;&nbsp;			log(this.data);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/present/graphics.html#edef-FONT">font</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/interact/forms.html#edef-FORM">form</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/TR/html4/present/frames.html#edef-FRAME">frame</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/TR/html4/present/frames.html#edef-FRAMESET">frameset</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td>fromElement</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Custom</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.fx.interval/">fx.interval</a></td>
		<td>jQuery.fx.interval = 100; <br>
			$('p').toggle(3000);</td>
		<td>Default: 13 milliseconds</td>
		<td>Number</td>
	</tr>
	<tr>
		<td>Properties</td>
		<td>jQuery Global</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.fx.interval/">fx.interval</a></td>
		<td>var X = fx.interval;</td>
		<td>&nbsp;</td>
		<td>Number</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Custom</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jquery.fx.off/">fx.off</a></td>
		<td> jQuery.fx.off = true;</td>
		<td>&nbsp;</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Properties</td>
		<td>jQuery Global</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jquery.fx.off/">fx.off</a></td>
		<td>var X = jQuery.fx.off;</td>
		<td>&nbsp;</td>
		<td>Boolean</td>
	</tr>
	<tr id="g">
		<td>Miscellaneous</td>
		<td>DOM Element Methods</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/get/">get</a></td>
		<td><a href="Miscellaneous/DOMElementMethods/get.cfm">Example</a></td>
		<td> returns  the DOM elements only</td>
		<td>Array</td>
		</tr>
	<tr>
		<td>Miscellaneous</td>
		<td>DOM Element Methods</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/get/">get</a></td>
		<td>var X = $('.myClass').get(0).id;</td>
		<td>Returns the id attribute in the 1st element of the jQuery array</td>
		<td>Element</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Shorthand methods</td>
		<td>getter</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/jQuery.get/">get</a></td>
		<td>jQuery.get('my.htm');</td>
		<td>$.ajax({url:'my.html'});</td>
		<td>jqXHR</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Shorthand methods</td>
		<td>getter</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/jQuery.get/">get</a></td>
		<td>jQuery.get('my.cfm', { <br>
	&nbsp;&nbsp;&nbsp;			A:1, B:2<br>
			});</td>
		<td>$.ajax({<br>
			&nbsp;&nbsp;&nbsp;url:'my.cfm', <br>
			&nbsp;&nbsp;&nbsp;data:{A:1,B:2}<br>
			});</td>
		<td>jqXHR</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Shorthand methods</td>
		<td>getter</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/jQuery.get/">get</a></td>
		<td>jQuery.get('my.cfm', { <br>
	&nbsp;&nbsp;&nbsp;			'myArray[]': [1,2]<br>
			});</td>
		<td>$.ajax({<br>
			&nbsp;&nbsp;&nbsp;url:'my.cfm',<br>
			&nbsp;&nbsp;&nbsp;data: {<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'myArray[]':[1,2]<br>
			&nbsp;&nbsp;&nbsp;} <br>
			});</td>
		<td>jqXHR</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Shorthand methods</td>
		<td>getter</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/jQuery.get/">get</a></td>
		<td>jQuery.get('my.cfm', function(A,B,C) {<br>
			&nbsp;&nbsp;&nbsp;log(A,B,C,this);<br>
			});</td>
		<td>$.ajax({<br>
&nbsp;&nbsp;&nbsp;			url:'my.cfm',<br>
			&nbsp;&nbsp;&nbsp;success: function(A,B,C) {<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;log(A,B,C,this);<br>
			&nbsp;&nbsp;&nbsp;}; <br>
			});</td>
		<td>jqXHR</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Shorthand methods</td>
		<td>getter</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/jQuery.get/">get</a></td>
		<td>jQuery.get('my.cfm', {<br>
			&nbsp;&nbsp;&nbsp;A:1, B:2<br>
			}, functon(A,B,C) {<br> 
			&nbsp;&nbsp;&nbsp;log(A,B,C,this);<br>
			});</td>
		<td>Use $.ajax</td>
		<td>jqXHR</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Shorthand methods</td>
		<td>getter</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/jQuery.get/">get</a></td>
		<td>jQuery.get('my.cfm', {<br>
			&nbsp;&nbsp;&nbsp;A:1, B:2<br>
			}, functon(A,B,C) {<br>
			&nbsp;&nbsp;&nbsp;log(A,B,C,this);<br>
			},'json');</td>
		<td>Script and JSONP requests are not subject to the same origin policy restrictions</td>
		<td>jqXHR</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Shorthand methods</td>
		<td>getter</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/jQuery.get/">get</a></td>
		<td>var X = jQuery.get('my.cfm', function() {     <br>
			&nbsp;&nbsp;&nbsp;log('1st success',this);   <br>
			})   .success(function() { <br>
			&nbsp;&nbsp;&nbsp;log('2nd  success',this); <br>
			})   .error(function() { <br>
			&nbsp;&nbsp;&nbsp;log('error',this); <br>
			})   .complete(function() { <br>
			&nbsp;&nbsp;&nbsp;log('1st complete',this); <br>
			});
			<p> X.complete(function(){ <br>
	&nbsp;&nbsp;&nbsp;log('2nd complete',this); <br>
			});</p></td>
		<td>Use $.ajax</td>
		<td>jqXHR</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Shorthand methods</td>
		<td>getter</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/jQuery.getJSON/">getJSON</a></td>
		<td><a href="Ajax/ShorthandMethods/getJSON.cfm">Example</a></td>
		<td>$.ajax({   <br>
&nbsp;&nbsp;&nbsp;			url: 'my.cfm',   <br>
&nbsp;&nbsp;&nbsp; dataType: 'json',   <br>
&nbsp;&nbsp;&nbsp; data: {A:1,B:2},   <br>
&nbsp;&nbsp;&nbsp; success: function() {}<br>
});</td>
		<td>jqXHR</td>
		</tr>
	<tr>
		<td>Ajax</td>
		<td>Shorthand methods</td>
		<td>getter</td>
		<td>No</td>
		<td>getScript</td>
		<td>&nbsp;</td>
		<td>$.ajax({ <br>
&nbsp;&nbsp;&nbsp;			url: 'my.js', <br>
&nbsp;&nbsp;&nbsp; dataType: 'script', <br>
&nbsp;&nbsp;&nbsp; data: {A:1,B:2}, <br>
&nbsp;&nbsp;&nbsp; success: function() {}<br>
});</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>global</td>
		<td>&nbsp;</td>
		<td>Default:true<br>
			false will prevent ajaxStart and ajaxStop</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.globalEval/">globalEval</a></td>
		<td>function init(){     <br>
			&nbsp;&nbsp;&nbsp;			jQuery.globalEval('var X = true;') <br>
			}
			<p>init(); </p></td>
		<td>Use in loading external scripts dynamically</td>
		<td>Function</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>method</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.grep">grep</a></td>
		<td>&nbsp;</td>
		<td>jQuery.grep( array, function(elementOfArray, indexInArray), [ invert ] )</td>
		<td>Array</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>method</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.grep">grep</a></td>
		<td>&nbsp;</td>
		<td>jQuery.grep( array, function(elementOfArray, indexInArray), [ invert ] )</td>
		<td>Array</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Extension</td>
		<td>selector</td>
		<td>No</td>
		<td>gt</td>
		<td>var X = $(&quot;tr:gt(4)&quot;);</td>
		<td>var X = $('tr').slice(4);</td>
		<td>filter</td>
	</tr>
	<tr id="h">
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/global.html#edef-H1">h1</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/global.html#edef-H2">h2</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/global.html#edef-H3">h3</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/global.html#edef-H4">h4</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/global.html#edef-H5">h5</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><p><a href="http://www.w3.org/TR/html4/struct/global.html#edef-H6">h6</a></p></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/has/">has</a></td>
		<td><a href="Traversing/Filtering/has.cfm">Example</a></td>
		<td>.has( selector )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/has/">has</a></td>
		<td>&nbsp;</td>
		<td>.has( contained )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Extension</td>
		<td>selector</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/has-selector/">has</a></td>
		<td>var X = $('div').filter(':has(p)')</td>
		<td>divs that have paragraphs in them</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Attributes</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/hasClass/">hasClass</a></td>
		<td><a href="Attributes/hasClass.cfm">Example</a></td>
		<td>&nbsp;</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>Class Attribute</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/hasClass/">hasClass</a></td>
		<td><a href="Attributes/hasClassThis.cfm">Example</a></td>
		<td>&nbsp;</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>CSS</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/hasClass/">hasClass</a></td>
		<td>dup</td>
		<td>&nbsp;</td>
		<td>Boolean</td>
		</tr>
	<tr>
		<td>Selectors</td>
		<td>&nbsp;</td>
		<td>Property</td>
		<td>Inter</td>
		<td><a href="https://developer.mozilla.org/en/DOM/window.location">hash</a></td>
		<td><p>&lt;a href=&quot;#myID&quot;&gt;myID&lt;/a&gt;</p>
			<p>				var X = $('a[hash=#myID]');</p></td>
		<td>the part of the URL that follows the # symbol, including the # symbol.</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/global.html#edef-HEAD">head</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Extension</td>
		<td>selector</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/header-selector/">header</a></td>
		<td>var X = $('aside').filter(':header');</td>
		<td>$('aside').filter('h1,h2,h3,h4,h5,h6');</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.ajax/#jQuery-ajax-settings">headers</a></td>
		<td>&nbsp;</td>
		<td>Can be overwritten by beforeSend</td>
		<td>Map</td>
	</tr>
	<tr>
		<td>CSS</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/height/#height1">height</a></td>
		<td><a href="Dimensions/Height.cfm">Example</a></td>
		<td>height of the window, document or element</td>
		<td>Integer</td>
	</tr>
	<tr>
		<td>Dimensions</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/height/#height2">height</a></td>
		<td>$('p').height('10em');<br>
			$('a').height(12);</td>
		<td>Default: px</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>Style Properties</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/height/#height2">height</a></td>
		<td>$('p').height( function(index, X){<br>
			&nbsp;&nbsp;&nbsp;log(index,X,this); <br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Visibility Filter</td>
		<td>selector</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/hidden-selector/">hidden</a></td>
		<td>var X = $('p').filter(':hidden');</td>
		<td>inputs with type=&quot;hidden&quot; or elements with display:none or width=0 or height=0</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Basics</td>
		<td>setter</td>
		<td>Intro</td>
		<td><a href="http://api.jquery.com/hide/">hide</a></td>
		<td><a href="Effects/Basics/Hide.cfm">Example</a></td>
		<td>Changes &lt;p&gt;&lt;/p&gt; to<br>
			&lt;p style=&quot;display: none;&quot;&gt;&lt;/p&gt;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Basics</td>
		<td>setter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/hide/">hide</a></td>
		<td><a href="Effects/Basics/HideSlow.cfm">Example</a></td>
		<td>Hides all paragraphs in 600 milliseconds</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Basics</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/hide/">hide</a></td>
		<td>$('p').hide('slow','swing');</td>
		<td>Hides paragraphs slowly using the swing easing</td>
		<td>jQuery</td>
	</tr>
	
	<tr>
		<td>Effects</td>
		<td>Basics</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/hide/">hide</a></td>
		<td>$('p').hide('slow',function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X,this); <br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Core</td>
		<td>Method</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.holdReady/">holdReady</a></td>
		<td><a href="Core/jQuery.holdReady.cfm">Example</a></td>
		<td>Delay .ready  until myplugin is loaded.</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>&nbsp;</td>
		<td>Property</td>
		<td>Inter</td>
		<td><a href="https://developer.mozilla.org/en/DOM/window.location">host</a></td>
		<td>&nbsp;</td>
		<td>the host name and port number.</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>&nbsp;</td>
		<td>Property</td>
		<td>Inter</td>
		<td><a href="https://developer.mozilla.org/en/DOM/window.location">hostname</a></td>
		<td>&nbsp;</td>
		<td>the host name (without the port number or square brackets).</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/hover/#hover1">hover</a></td>
		<td><a href="Events/MouseEvents/hover.cfm">Example</a></td>
		<td>.hover( handlerIn(eventObject), handlerOut(eventObject) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/hover/#hover2">hover</a></td>
		<td>$('p').hover(function() {<br />
			&nbsp;&nbsp;&nbsp;     $(this).toggleClass('.myClass');<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/present/graphics.html#edef-HR">hr</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>&nbsp;</td>
		<td>Property</td>
		<td>Inter</td>
		<td><a href="https://developer.mozilla.org/en/DOM/window.location">href</a></td>
		<td>&nbsp;</td>
		<td>the entire URL.</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/global.html#edef-HTML">html</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Attributes</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/html/#html1">html</a></td>
		<td><a href="Attributes/html.cfm">Example</a></td>
		<td>An array of the html that's inside each paragraph</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Insertion, Inside</td>
		<td>setter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/html/#html2">html</a></td>
		<td><a href="Attributes/htmlSet.cfm">Example</a></td>
		<td>Replaces the html that's in every paragraph with a div element</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Insertion, Inside</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/html/#html2">html</a></td>
		<td>$('p').html(function(index, X) {<br>
			&nbsp;&nbsp;&nbsp;log(index,X,this); <br>
			});</td>
		<td>logs every paragraph</td>
		<td>jQuery</td>
	</tr>
	<tr id="i">
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/present/graphics.html#edef-I">i</a></td>
		<td>&nbsp;</td>
		<td>An array of every italics tag.</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>ifModified</td>
		<td>&nbsp;</td>
		<td>Default: false<br>
			See: Last-Modified header</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/TR/html4/present/frames.html#edef-IFRAME">iframe</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Extension</td>
		<td>selector</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/image-selector/">image</a></td>
		<td>var X = $('input:image');</td>
		<td>var X = $('input[type=image]');</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/objects.html#edef-IMG">img</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.inArray/">inArray</a></td>
		<td>var A = [ 1, 2, 3];
			<p>jQuery.inArray(3, A); // 2<br>
			jQuery.inArray(10, A);	//	-1	</p></td>
		<td>&nbsp;</td>
		<td>Number</td>
	</tr>
	<tr>
		<td>Miscellaneous</td>
		<td>DOM Element Methods</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/index/">index</a></td>
		<td><a href="Miscellaneous/DOMElementMethods/Index.cfm">Example</a></td>
		<td>&nbsp;</td>
		<td>Number</td>
	</tr>
	<tr>
		<td>Miscellaneous</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/index/">index</a></td>
		<td>&nbsp;</td>
		<td>index( selector )</td>
		<td>Number</td>
	</tr>
	<tr>
		<td>Miscellaneous</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/index/">index</a></td>
		<td>&nbsp;</td>
		<td>index( element )</td>
		<td>Number</td>
	</tr>
	<tr>
		<td>CSS</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/innerHeight/">innerHeight</a></td>
		<td><a href="Dimensions/Height.cfm">Example</a></td>
		<td>includes padding,  and not margin</td>
		<td>Integer</td>
	</tr>
	<tr>
		<td>Dimensions</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/innerHeight/">innerHeight</a></td>
		<td><a href="Dimensions/Height.cfm">Example</a> (duplicate)</td>
		<td>includes padding,  and not margin</td>
		<td>Integer</td>
		</tr>
	<tr>
		<td>Manipulation</td>
		<td>Style Properties</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/innerHeight/">innerHeight</a></td>
		<td><a href="Dimensions/Height.cfm">Example</a> (duplicate)</td>
		<td>includes padding,  and not margin</td>
		<td>Integer</td>
		</tr>
	<tr>
		<td>&nbsp;</td>
		<td>Property</td>
		<td>&nbsp;</td>
		<td>Inter</td>
		<td>innerHTML</td>
		<td><a href="js/innerHTML.cfm">Example</a></td>
		<td>Replace the html of a single element</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>CSS</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/innerWidth/">innerWidth</a></td>
		<td><a href="Dimensions/Width.cfm">Example</a></td>
		<td>includes padding,  and not margin</td>
		<td>Integer</td>
	</tr>
	<tr>
		<td>Dimensions</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/innerWidth/">innerWidth</a></td>
		<td><a href="Dimensions/Width.cfm">Example</a> (duplicate)</td>
		<td>includes padding,  and not margin</td>
		<td>Integer</td>
		</tr>
	<tr>
		<td>Manipulation</td>
		<td>Style Properties</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/innerWidth/">innerWidth</a></td>
		<td><a href="Dimensions/Width.cfm">Example</a> (duplicate)</td>
		<td>includes padding,  and not margin</td>
		<td>Integer</td>
		</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/interact/forms.html#edef-INPUT">input</a></td>
		<td><a href="Selectors/Element/Input.cfm">Example</a></td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Extension</td>
		<td>selector</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/input-selector/">input</a></td>
		<td>var X = $('form').filter(':input');</td>
		<td>&lt;input&gt;, &lt;textarea&gt;, &lt;select&gt;, &lt;button&gt;</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/text.html#edef-ins">ins</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Insertion, Outside</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/insertAfter/">insertAfter</a></td>
		<td><a href="Manipulation/DOMInsertionOutside/InsertAfter.cfm">Example</a></td>
		<td>&lt;p&gt;Paragraph&lt;/p&gt;&lt;a href=&quot;#top&quot;&gt;Top&lt;/a&gt;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Insertion, Outside</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/insertBefore/">insertBefore</a></td>
		<td><a href="Manipulation/DOMInsertionOutside/InsertBefore.cfm">Example</a></td>
		<td>&lt;a href=&quot;#top&quot;&gt;Top&lt;/a&gt;&lt;p&gt;Paragraph&lt;/p&gt;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/is/">is</a></td>
		<td><a href="Traversing/Filtering/is.cfm">Example</a></td>
		<td>.is( selector )</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/is/">is</a></td>
		<td>&nbsp;</td>
		<td>.is( function(index) )</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/is/">is</a></td>
		<td>&nbsp;</td>
		<td>.is( jQuery object )</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/is/">is</a></td>
		<td>var X = $('li:even');<br>
			$('li').click(function() {     <br>
	&nbsp;&nbsp;&nbsp;			if (X.is(this)) {       <br>
	&nbsp;&nbsp;&nbsp; }   <br>
			});</td>
		<td>.is( element )</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.isArray/">isArray</a></td>
		<td>$('#myID').click(function() {<br>
			&nbsp;&nbsp;&nbsp;log(jQuery.isArray(this));<br>
			&nbsp;&nbsp;&nbsp;log(jQuery.isArray($(this)));<br>
			});</td>
		<td><em>this</em> is a dom element<br>
			$(<em>this</em>) is a jQuery <a href="http://docs.jquery.com/Types#jQuery">Array-like</a> object</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/event.isDefaultPrevented/">isDefaultPrevented</a></td>
		<td>$(&quot;a&quot;).click(function(X){   <br>
			&nbsp;&nbsp;&nbsp;X.preventDefault(); <br>
			&nbsp;&nbsp;&nbsp;log( X.isDefaultPrevented() );<br>
			});		</td>
		<td>If event.preventDefault() was  called</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.isEmptyObject/">isEmptyObject</a></td>
		<td>var X = {};<br>
			log(isEmptyObject(X));</td>
		<td>true</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.isFunction/">isFunction</a></td>
		<td>function myFunction() {     }     <br>
			var objs = [           function () {},           { <br>
			&nbsp;&nbsp;&nbsp;A:1, B:2<br>
			},           null,           myFunction         ];
			<p>jQuery.each(objs, function (i) {       <br>
	&nbsp;&nbsp;&nbsp;			log(jQuery.isFunction(objs[i]));       <br>
			}); </p></td>
		<td>true<br>
			false {A:1, B:2)<br>
			false null<br>
			true myFunction<br></td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/event.isImmediatePropagationStopped/">isImmediate<br>
			PropagationStopped</a></td>
		<td> $(&quot;button&quot;).click(function(X) {   <br>
			&nbsp;&nbsp;&nbsp;X.stopImmediatePropagation(); <br>	
			&nbsp;&nbsp;&nbsp;log(X.isImmediatePropagationStopped()); <br>
			});</td>
		<td>&nbsp;</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/TR/html4/interact/forms.html#edef-ISINDEX">isIndex</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.ajax/">isLocal</a></td>
		<td>&nbsp;</td>
		<td>See: ajaxSetup</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td><a href="http://api.jquery.com/jQuery.isNumeric/">isNumeric</a></td>
		<td><a href="Utilities/jQuery.isNumeric.cfm">Example</a></td>
		<td>$.isNumeric(X); </td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.isPlainObject/">isPlainObject</a></td>
		<td>jQuery.isPlainObject({})</td>
		<td>true</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/event.isPropagationStopped/">isPropagationStopped</a></td>
		<td>$(&quot;button&quot;).click(function(X) {<br>
			&nbsp;&nbsp;&nbsp;X.stopPropagation(); <br>
			&nbsp;&nbsp;&nbsp;log(X.isPropagationStopped());<br>
			});</td>
		<td>&nbsp;</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Deferred</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/deferred.isRejected/">isRejected</a></td>
		<td>&nbsp;</td>
		<td>Deferred objects are: unresolved, resolved, or rejected</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Deferred</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/deferred.isResolved/">isResolved</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.isWindow/">isWindow</a></td>
		<td>var X = jQuery.isWindow(window);</td>
		<td>&nbsp;</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.isXMLDoc/">isXMLDoc</a></td>
		<td>&nbsp;</td>
		<td>jQuery.isXMLDoc( node )</td>
		<td>Boolean</td>
	</tr>
	<tr id="j">
		<td>Internals</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/jquery-2/">jquery</a></td>
		<td><a href="Miscellaneous/jQuery.cfm">Example</a></td>
		<td>The version</td>
		<td>String</td>
	</tr>
	
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>Object</td>
		<td>Adv</td>
		<td>jqXHR</td>
		<td>var X = jQuery.ajax();</td>
		<td> readyState     <br>
			status     <br>
			statusText     <br>
			responseXML<br>	
			responseText<br>
			setRequestHeader(name, value)
			<br>
			getAllResponseHeaders()<br>
			getResponseHeader()     <br>
			abort()</td>
		<td>Object</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>jsonp</td>
		<td>{ jsonp: false, jsonpCallback: 'myFunction' }</td>
		<td>&nbsp;</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>jsonp</td>
		<td>{ jsonp:'myFunction' }</td>
		<td>&nbsp;</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>jsonpCallback</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>jsonpCallback</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>Function</td>
	</tr>
	<tr id="k">
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/text.html#edef-KBD">kbd</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>No</td>
		<td>keyCode</td>
		<td>&nbsp;</td>
		<td>Use which instead</td>
		<td>Integer</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Keyboard Events</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/keydown/">keydown</a></td>
		<td>$('textarea').keydown(function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X,this);<br>});</td>
		<td> Includes modifier keys, but no repeats. See: which</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Keyboard Events</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/keydown/">keydown</a></td>
		<td>			$('textarea').keydown({A:1,B:2},function(X) {<br>
	&nbsp;&nbsp;&nbsp;log(X.data,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Keyboard Events</td>
		<td>trigger</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/keydown/">keydown</a></td>
		<td>$('#myID').keydown();</td>
		<td>Triggers the keydown event</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Keyboard Events</td>
		<td>register</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/keypress/">keypress</a></td>
		<td><a href="Events/KeyboardEvents/keypress.cfm">Example</a></td>
		<td>Does not include modifier keys, but repeats. See: which</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Keyboard Events</td>
		<td>register</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/keypress/">keypress</a></td>
		<td> $('textarea').keypress({A:1,B:2},function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X.data,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Keyboard Events</td>
		<td>trigger</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/keypress/">keypress</a></td>
		<td>$('#myID').keypress();</td>
		<td>Triggers the keypress event</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Keyboard Events</td>
		<td>register</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/keyup/">keyup</a></td>
		<td>$('textarea').keyup(function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X,this);<br>
			});</td>
		<td>When the user releases a key</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Keyboard Events</td>
		<td>register</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/keyup/">keyup</a></td>
		<td> $('textarea').keyup({A:1,B:2},function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X.data,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Keyboard Events</td>
		<td>trigger</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/keyup/">keyup</a></td>
		<td>$('#myID').keyup();</td>
		<td>Triggers the keyup event</td>
		<td>jQuery</td>
	</tr>
	<tr id="l">
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/interact/forms.html#edef-LABEL">label</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Extension</td>
		<td>selector</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/last-selector/">last</a></td>
		<td>var X = $('tr').filter(':last');</td>
		<td>An array of 1 element</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/last/">last</a></td>
		<td>var X = $('li').last();</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Child filter</td>
		<td>selector</td>
		<td>Inter</td>
		<td>last-child</td>
		<td>var X = $(&quot;tr td:last-child&quot;);</td>
		<td>last table cell in each table row</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td>layerX</td>
		<td>&nbsp;</td>
		<td><a href="http://blog.jquery.com/2011/11/03/jquery-1-7-released">event.originalEvent.layerX</a></td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td>layerY</td>
		<td>&nbsp;</td>
		<td><a href="http://blog.jquery.com/2011/11/03/jquery-1-7-released">event.originalEvent.layerX</a></td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/interact/forms.html#edef-LEGEND">legend</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>JavaScript</td>
		<td>&nbsp;</td>
		<td>Property</td>
		<td>Inter</td>
		<td>length</td>
		<td>for (var i=0, ii=myArray.length; i &lt; ii; i++){<br>
			});</td>
		<td>length is  JavaScript, it's not part of jQuery</td>
		<td>Integer</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/lists.html#edef-LI">li</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/links.html#edef-LINK">link</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>register</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/live/">live</a></td>
		<td>$(&quot;table&quot;).each(function(){ 	<br>
	&nbsp;&nbsp;&nbsp;			$(&quot;td&quot;, this).live(&quot;hover&quot;, function(){ 		<br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $(this).toggleClass(&quot;hover&quot;); 	<br>
	&nbsp;&nbsp;&nbsp; }); <br>
			});</td>
		<td>.live( eventType, handler )<br>
			Use delegate instead</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>register</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/live/">live</a></td>
		<td>&nbsp;</td>
		<td>.live( eventType, eventData, handler )<br>
			Use delegate instead</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>register</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/live/">live</a></td>
		<td>&nbsp;</td>
		<td>.live( events )<br>
			Use delegate instead</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Shortcut method</td>
		<td>trigger</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/load/">load</a></td>
		<td>$('#myID').load('my.htm');</td>
		<td>var X = $.ajax({<br>
			&nbsp;&nbsp;&nbsp;url:'my.html'<br>
			});
			<p>$('#myID').html(X);</p></td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Shortcut method</td>
		<td>trigger</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/load/">load</a></td>
		<td>var $A = $('select[name=A]');<br>
			var $B = null;<br>
			$A.change(function() {<br>
	&nbsp;&nbsp;&nbsp;if ($B === null) {<br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$B = $('&lt;select name=&quot;B&quot;&gt;&lt;/select&gt;')<br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.appendTo('form');<br>
	&nbsp;&nbsp;&nbsp;}<br>
	&nbsp;&nbsp;&nbsp;$B.load('my.cfm?myID=' + $A.val());<br>
			});<br></td>
		<td>From <a href="http://feeds.feedburner.com/jqueryfordesigners-podcast">jQuery for Designers</a>.<br>
			Loads &lt;select name=&quot;B&quot;&gt; depending on what was selected for &lt;select name=&quot;A&quot;&gt;.<br>
			my.cfm?myID=1 should return &lt;option&gt; stmts.<br>
			Use $.ajax instead, but this example shows how to populate a form based on user input.</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Shortcut method</td>
		<td>trigger</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/load/">load</a></td>
		<td>.load( url,  data  )</td>
		<td>$.ajax</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Shortcut method</td>
		<td>trigger</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/load/">load</a></td>
		<td>.load( url,  data ,  complete(responseText, textStatus, XMLHttpRequest) )</td>
		<td>$.ajax</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Document Loading</td>
		<td>register</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/load-event/">load</a></td>
		<td><a href="Core/jQueryCallback.cfm">Example</a></td>
		<td>$(window).load(function() {<br />
});</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Document Loading</td>
		<td>register</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/load-event/">load</a></td>
		<td>$('img').load({A:1,B:2},function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X.data); <br />
			});</td>
		<td>Waits until images are fully loaded.</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Shorthand Methods</td>
		<td>trigger</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/load">load</a></td>
		<td>$('#myID').load('my.cfm');</td>
		<td>.load( url)</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Shorthand Methods</td>
		<td>trigger</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/load/">load</a></td>
		<td>$('#myID').load('my.cfm #myID');</td>
		<td>.load( url)</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Shorthand Methods</td>
		<td>trigger</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/load/">load</a></td>
		<td>$('#myID').load('my.cfm',{A:1,B:2});</td>
		<td>.load( url,  data )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Shorthand Methods</td>
		<td>trigger</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/load/">load</a></td>
		<td>$('#myID').load('my.cfm',function(X,Y,Z) {<br>
			&nbsp;&nbsp;&nbsp;log(X,Y,Z,this); <br>
			});</td>
		<td>.load( url,    complete(responseText, textStatus, XMLHttpRequest)  )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Shorthand Methods</td>
		<td>trigger</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/load/">load</a></td>
		<td>$('#myID').load('my.cfm',{A:1,B:2},function(X,Y,Z) {<br>
			&nbsp;&nbsp;&nbsp;log(X,Y,Z,this); <br>
			});</td>
		<td>.load( url,  data ,  complete(responseText, textStatus, XMLHttpRequest)  )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Extension</td>
		<td>selector</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/lt-selector/">lt</a></td>
		<td>var X = $(&quot;tr:lt(4)&quot;);</td>
		<td>var X = $('tr').slice(0,4);</td>
		<td>filter</td>
	</tr>
	<tr id="m">
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.makeArray/">makeArray</a></td>
		<td colspan="2">var X = document.getElementsByTagName(&quot;div&quot;); // returns a nodeList     <br>
			var arr = jQuery.makeArray(X);     <br>
			arr.reverse(); // use an Array method on list of dom elements     <br>
			$(arr).appendTo(document.body);</td>
		<td>Array</td>
	</tr>
	
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/objects.html#edef-MAP">map</a></td>
		<td>Client side image map</td>
		<td>map and area elements</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/map/">map</a></td>
		<td>var X = $(&quot;input&quot;).map(function(){       <br>			
			&nbsp;&nbsp;&nbsp;return $(this).val(); <br>
			}).get().join(&quot;, &quot;);</td>
		<td>Makes a comma separated list of all input values</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/map/">map</a></td>
		<td><a href="Traversing/Filtering/map.cfm">Example</a></td>
		<td>.map( callback(index, domElement) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.map/">map</a></td>
		<td>var A = [ 1,2,3];
			<p>X = jQuery.map(A, function(n, index){       <br>
	&nbsp;&nbsp;&nbsp;			return (n*10 +  index);     <br>
			}); </p></td>
		<td>jQuery.map( array, callback(elementOfArray, indexInArray) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.map/">map</a></td>
		<td>&nbsp;</td>
		<td>jQuery.map( arrayOrObject, callback( value, indexOrKey ) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/TR/html4/struct/lists.html#edef-MENU">menu</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.merge/">merge</a></td>
		<td>var A=[0,1,2];<br>
			var B=[2,3,4];
			<p>jQuery.merge( A,B);</p></td>
		<td>A is now: [0,1,2,2,3,4]</td>
		<td>Array</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/TR/html4/struct/global.html#edef-META">meta</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/category/events/event-object/">metaKey</a></td>
		<td><a href="Events/EventObject/metaKey.cfm">Example</a></td>
		<td>&nbsp;</td>
		<td>boolean</td>
	</tr>
	
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>mimeType</td>
		<td>&nbsp;</td>
		<td>A mime type to override the XHR mime type.</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/mousedown/">mousedown</a></td>
		<td>$('p').mousedown(function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/mousedown/">mousedown</a></td>
		<td>$('p').mousedown({A:1,B:2},function(X) {<br>
	&nbsp;&nbsp;&nbsp;log(X.data,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/mousedown/">mousedown</a></td>
		<td>$('#myID').mousedown();</td>
		<td>Triggers the mousedown event</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/mouseenter/">mouseenter</a></td>
		<td>$('p').mouseenter(function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/mouseenter/">mouseenter</a></td>
		<td>$('p').mouseenter({A:1,B:2},function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X.data,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/mouseenter/">mouseenter</a></td>
		<td>$('#myID').mouseenter();</td>
		<td>Triggers the mouseenter event</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/mouseleave/">mouseleave</a></td>
		<td>$('p').mouseleave(function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/mouseleave/">mouseleave</a></td>
		<td>$('p').mouseleave({A:1,B:2},function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X.data,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/mouseleave/">mouseleave</a></td>
		<td>$('#myID').mouseleave();</td>
		<td>Triggers the mouseleave event</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/mousemove">mousemove</a></td>
		<td>$('p').mousemove(function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>getter</td>
		<td>Adv</td>
		<td>mousemove</td>
		<td>$('p').mousemove({A:1,B:2},function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X.data,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>getter</td>
		<td>Adv</td>
		<td>mousemove</td>
		<td>$('#myID').mousemove();</td>
		<td>Triggers the mousemove event</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/mouseout">mouseout</a></td>
		<td>$('p').mouseout(function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/mouseout">mouseout</a></td>
		<td>$('p').mouseout({A:1,B:2},function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X.data,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/mouseout">mouseout</a></td>
		<td>$('#myID').mouseout();</td>
		<td>Triggers the mouseout event</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/mouseover">mouseover</a></td>
		<td>$('p').mouseover(function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/mouseover">mouseover</a></td>
		<td>$('p').mouseover({A:1,B:2},function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X.data,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/mouseover">mouseover</a></td>
		<td>$('#myID').mouseover();</td>
		<td>Triggers the mouseover event</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/mouseup">mouseup</a></td>
		<td>$('p').mouseup(function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/mouseup/">mouseup</a></td>
		<td>$('p').mouseup({A:1,B:2},function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X.data,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>trigger</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/mouseup/">mouseup</a></td>
		<td>$('#myID').mouseup();</td>
		<td>Triggers the mouseup event</td>
		<td>jQuery</td>
	</tr>
	
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/event.namespace/">namespace</a></td>
		<td>$(&quot;p&quot;).bind(&quot;A.B&quot;, function(X) {   <br>
			log( X.namespace ); <br>
			});
			<p>$(&quot;button&quot;).click(function() {   <br>
				$(&quot;p&quot;).trigger(&quot;A.B&quot;); <br>
			}); </p></td>
		<td>B</td>
		<td>string</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td>newValue</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/next">next</a></td>
		<td>var X = $('.myClass').next();</td>
		<td>One sibling after class=&quot;myClass&quot;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/next">next</a></td>
		<td>var X = $('.myClass').next('p');</td>
		<td>The paragraph after class=&quot;myClass&quot;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/nextAll">nextAll</a></td>
		<td>var X = $('.myClass').nextAll();</td>
		<td>All siblings after class=&quot;myClass&quot;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/nextAll">nextAll</a></td>
		<td>var X = $('.myClass').nextAll('td');</td>
		<td>All tds after class=&quot;myClass&quot;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/nextUntil/">nextUntil</a></td>
		<td>var X = $('#myID').nextUntil('dt');</td>
		<td>Siblings after #myID</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/nextUntil/">nextUntil</a></td>
		<td>var X = $('#myID').nextUntil();</td>
		<td>The remaining elements</td>
		<td>jQuery</td>
	</tr>
	<tr id="n">
		<td>Miscellaneous</td>
		<td>Setup Functions</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.noConflict/">noConflict</a></td>
		<td><a href="Miscellaneous/SetupFunctions/noConflict.cfm">Example</a></td>
		<td>Use if combined with other JavaScript libraries</td>
		<td>Object</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/TR/html4/present/frames.html#edef-NOFRAMES">noframes</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/jQuery.noop/">noop</a></td>
		<td>&nbsp;</td>
		<td>jQuery.noop;</td>
		<td>function</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/interact/scripts.html#edef-NOSCRIPT">noscript</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Basic filter</td>
		<td>selector</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/not-selector/">not</a></td>
		<td>var X = $('input:not(:checked)');</td>
		<td>$('input').not(':checked');</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/not/">not</a></td>
		<td><a href="Traversing/Filtering/not.cfm">Example</a></td>
		<td>.not(selector)</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/not/">not</a></td>
		<td><a href="Traversing/Filtering/notElements.cfm">Example</a></td>
		<td>.not( elements )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/not/">not</a></td>
		<td><a href="Traversing/Filtering/notFunction.cfm">Example</a></td>
		<td>.not( function(index) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/jQuery.now/">now</a></td>
		<td><a href="Utilities/jQuery.now.cfm">Example</a></td>
		<td>var X = (new Date).getTime();</td>
		<td>Number</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Child filter</td>
		<td>selector</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/nth-child-selector/">nth-child(Index)</a></td>
		<td><a href="Selectors/ChildFilter/nth-child.cfm">Example</a></td>
		<td>nth-child is 1 based, and eq() is 0 based</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Child filter</td>
		<td>selector</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/nth-child-selector/">nth-child(even)</a></td>
		<td><a href="Selectors/ChildFilter/nth-childEven.cfm">Example</a></td>
		<td>nth-child is 1 based, and eq() is 0 based</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Child filter</td>
		<td>selector</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/nth-child-selector/">nth-child(odd)</a></td>
		<td><a href="Selectors/ChildFilter/nth-childOdd.cfm">Example</a></td>
		<td>nth-child is 1 based, and eq() is 0 based</td>
		<td>filter</td>
	</tr>
	
	<tr>
		<td>Selectors</td>
		<td>Child filter</td>
		<td>selector</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/nth-child-selector/">nth-child(equation)</a></td>
		<td><a href="Selectors/ChildFilter/nth-childEquation.cfm">Example</a></td>
		<td>nth-child is 1 based, and eq() is 0 based</td>
		<td>filter</td>
	</tr>
	
	<tr id="o">
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/TR/html4/struct/objects.html#edef-OBJECT">object</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Extensions</td>
		<td>selector</td>
		<td>Inter</td>
		<td>odd</td>
		<td>var X = $('tr').filter(':odd');</td>
		<td>2nd, 4th, 6th...</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>CSS</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/offset/#offset1">offset</a></td>
		<td>var X = $('#myID').offset(); <br>
			log(X.left,X.top);</td>
		<td>&nbsp;</td>
		<td>Object</td>
	</tr>
	<tr>
		<td>Offset</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/offset/#offset2">offset</a></td>
		<td>$('p:last').offset({ top: 10, left: 30 });</td>
		<td>&nbsp;</td>
		<td>Object</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>Style Properties</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/offset/#offset2">offset</a></td>
		<td>&nbsp;</td>
		<td>.offset( function(index, coords) )</td>
		<td>Object</td>
	</tr>
	<tr>
		<td>Offset</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/offsetParent/">offsetParent</a></td>
		<td>var X = $('div').offsetParent();</td>
		<td>position: relative<br>
			position: absolute<br>
			position: fixed</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/offsetParent/">offsetParent</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td>offsetX</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td>offsetY</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/lists.html#edef-OL">ol</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Event</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>on</td>
		<td><a href="Events/on/click.cfm">Example</a></td>
		<td>$('a').on('click', myFunction);</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>on</td>
		<td>&nbsp;</td>
		<td>$('a').on('click', { val: 42 }, myFunction);</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/one/">one</a></td>
		<td>$('p').one('click', function(X) {   <br>
	&nbsp;&nbsp;&nbsp;	log(X,this);		<br>
			});</td>
		<td>.one( eventType, handler(eventObject) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/one/">one</a></td>
		<td>$('p').one('click', {A:1,B:2},function(X) { <br>
	&nbsp;&nbsp;&nbsp;	log(X.data,this);		<br>
			});</td>
		<td>.one( eventType, [eventData,] handler(eventObject) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Child filter</td>
		<td>selector</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/only-child-selector/">only-child</a></td>
		<td><a href="Selectors/ChildFilter/only-child.cfm">Example</a></td>
		<td>buttons with no siblings in their div</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/interact/forms.html#edef-OPTGROUP">optgroup</a></td>
		<td><a href="Selectors/Element/optgroup.cfm">Example</a></td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/interact/forms.html#edef-OPTION">option</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td>originalTarget</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>CSS</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/outerHeight/">outerHeight</a></td>
		<td><a href="Dimensions/Height.cfm">Example</a></td>
		<td>&nbsp;</td>
		<td>Integer</td>
	</tr>
	<tr>
		<td>Dimensions</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/outerHeight/">outerHeight</a></td>
		<td>var X = $('p:last').outerHeight(true);</td>
		<td>Includes padding and margin</td>
		<td>Integer</td>
	</tr>
	
	<tr>
		<td>CSS</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/outerWidth/">outerWidth</a></td>
		<td>var X = $('p:last').outerWidth();</td>
		<td>Includes padding and not margin</td>
		<td>Integer</td>
		</tr>
	<tr>
		<td>Dimensions</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/outerWidth/">outerWidth</a></td>
		<td><a href="Dimensions/Width.cfm">Example</a></td>
		<td>Includes padding and margin</td>
		<td>Integer</td>
		</tr>
	<tr>
		<td>Manipulation</td>
		<td>Style Properties</td>
		<td>getter</td>
		<td>Adv</td>
		<td>&nbsp;</td>
		<td>var X = $('p:last').outerWidth(true);</td>
		<td>&nbsp;</td>
		<td>Integer</td>
		</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.ajax#jQuery-ajax1">overrideMimeType</a></td>
		<td>&nbsp;</td>
		<td>modify the response content-type header</td>
		<td>jQuery</td>
	</tr>
	<tr id="p">
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Intro</td>
		<td><a href="http://www.w3.org/TR/html4/struct/text.html#edef-P">p</a></td>
		<td><a href="Selectors/Intro/p.cfm">Example</a></td>
		<td>An array of every paragraph tag</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/event.pageX/">pageX</a></td>
		<td>$(document).bind('mousemove',function(myEvent){              <br>
			&nbsp;&nbsp;&nbsp;$(&quot;body&quot;).text(myEvent.pageX + &quot;,&quot; + myEvent.pageY);  <br>
			});</td>
		<td>Left</td>
		<td>Number</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/event.pageY/">pageY</a></td>
		<td>$(document).bind('mousemove',function(myEvent){ <br>
			&nbsp;&nbsp;&nbsp;$(&quot;body&quot;).text(myEvent.pageX + &quot;,&quot; + myEvent.pageY); <br>
			});</td>
		<td>Top</td>
		<td>Number</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/TR/html4/struct/objects.html#edef-PARAM">param</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Miscellaneous</td>
		<td>Collection Manipulation</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.param/">param</a></td>
		<td>var X = { <br>
			&nbsp;&nbsp;&nbsp;A:1, <br>
			&nbsp;&nbsp;&nbsp;B:2 <br>
			};
			<p>log(jQuery.param(X));</p></td>
		<td>A:1&amp;B:2</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Forms</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.param/">param</a></td>
		<td>var X = [1,2];
			<p>$.param(X) </p></td>
		<td>X[]=1&amp;X[]=2</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Help functions</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.param/">param</a></td>
		<td>var X = {};<br>
			X.A = {};<br>
			X.A.one=1;<br>
			X.A.two=2;
			<p>$.param(X);<br>
			decodeURIComponent($.param(X)); </p></td>
		<td>a%5Bone%5D=1&amp;a%5Btwo%5D=2
			<p>a[one]=1&amp;a[two]=2</p></td>
		<td>String</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/parent/">parent</a></td>
		<td>var X = $('p').parent('.myClass');</td>
		<td>Paragraphs whose immediate parent has class=&quot;myClass&quot;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/parent/">parent</a></td>
		<td><a href="Traversing/TreeTraversal/Parent.cfm">Example</a></td>
		<td>Parent of the table cell that was clicked</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Extension</td>
		<td>selector</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/parent-selector/">parent</a></td>
		<td>var X = $('td').filter(':parent');</td>
		<td>Any table cells that are not empty, (they are parents to something)</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/parents/">parents</a></td>
		<td>var X = $('li').parents();</td>
		<td>body, p, ul</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/parents/">parents</a></td>
		<td>var X = $('li').parents('ul');</td>
		<td>All the uls in the chain above this li</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/parentsUntil/">parentsUntil</a></td>
		<td>var X = $('li').parentsUntil();</td>
		<td>var X = $('li').parents();</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/parentsUntil/">parentsUntil</a></td>
		<td><a href="Traversing/TreeTraversal/parentsUntil.cfm">Example</a></td>
		<td>not including the element matched by the selector</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.parseJSON/">parseJSON</a></td>
		<td><a href="Utilities/jQuery.parseJSON.cfm">Example</a></td>
		<td>See <a href="http://json.org/">json.org</a></td>
		<td>Object</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.parseXML/">parseXML</a></td>
		<td colspan="2">var xml = &quot;&lt;rss version='2.0'&gt;&lt;channel&gt;&lt;title&gt;RSS Title&lt;/title&gt;&lt;/channel&gt;&lt;/rss&gt;&quot;,     <br>
			xmlDoc = jQuery.parseXML( xml ),     <br>
			$xml = $( xmlDoc ),     <br>
			$title = $xml.find( &quot;title&quot; );</td>
		<td>XMLDocument</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>password</td>
		<td>&nbsp;</td>
		<td>response to an HTTP access authentication request</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Extension</td>
		<td>selector</td>
		<td>Inter</td>
		<td>password</td>
		<td>var X = $('input[type=&quot;password&quot;]');</td>
		<td>&nbsp;</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>&nbsp;</td>
		<td>Property</td>
		<td>Inter</td>
		<td><a href="https://developer.mozilla.org/en/DOM/window.location">pathname</a></td>
		<td>&nbsp;</td>
		<td>the path (relative to the host).</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Deferred</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/deferred.pipe/">pipe</a></td>
		<td><a href="DeferredObject/pipe.cfm">Example</a></td>
		<td>filter Deferreds</td>
		<td>Promise</td>
	</tr>
	<tr>
		<td>Deferred</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/deferred.pipe/">pipe</a></td>
		<td>deferred.pipe( doneFilter,failFilter )</td>
		<td>&nbsp;</td>
		<td>Promise</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>&nbsp;</td>
		<td>Property</td>
		<td>Inter</td>
		<td><a href="https://developer.mozilla.org/en/DOM/window.location">port</a></td>
		<td>&nbsp;</td>
		<td>the port number of the URL.</td>
		<td>Integer</td>
	</tr>
	<tr>
		<td>CSS</td>
		<td>&nbsp;</td>
		<td>method</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/position/">position</a></td>
		<td>var X =  $('p:first');<br>
			log(X.left,X.top);</td>
		<td>See: offset</td>
		<td>Object</td>
	</tr>
	<tr>
		<td>Offset</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/position/">position</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>Object</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>Style Properties</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/position/">position</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>Object</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Shorthand methods</td>
		<td>setting</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/jQuery.post/">post</a></td>
		<td>I recommend not using this method because it only saves you a couple of characters of typing, and the $.ajax command has more features.</td>
		<td>$.ajax({   <br>
&nbsp;&nbsp;&nbsp;			type: 'POST',   <br>
&nbsp;&nbsp;&nbsp; url: 'my.cfm',   <br>
&nbsp;&nbsp;&nbsp; data: {A:1,B:2},   <br>
&nbsp;&nbsp;&nbsp; success: function() {},<br>
&nbsp;&nbsp;&nbsp; dataType: 'json'<br>
});</td>
		<td>jqXHR</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/text.html#edef-PRE">pre</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Insertion, Inside</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/prepend/">prepend</a></td>
		<td><a href="Manipulation/DOMInsertionInside/Prepend.cfm">Example</a></td>
		<td>&lt;p&gt;&lt;a href=&quot;#top&quot;&gt;Top&lt;/a&gt;Paragraph&lt;/p&gt;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Insertion, Inside</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/prepend/">prepend</a></td>
		<td>$('p').prepend(function(index,X) {<br>
	&nbsp;&nbsp;&nbsp;log(index,X,this);<br>
			});</td>
		<td>.prepend( function(index, html) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Insertion, Inside</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/prependTo/">prependTo</a></td>
		<td><a href="Manipulation/DOMInsertionInside/prependTo.cfm">Example</a></td>
		<td>&lt;p&gt;&lt;a href=&quot;#top&quot;&gt;Top&lt;/a&gt;Paragraph&lt;/p&gt;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/prev/">prev</a></td>
		<td><a href="Traversing/TreeTraversal/Prev.cfm">Example</a></td>
		<td>The  td before the one that was clicked.</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/prev/">prev</a></td>
		<td><a href="Traversing/TreeTraversal/PrevSelector.cfm">Example</a></td>
		<td>The previous sibling that has class=&quot;myClass&quot;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/prevAll">prevAll</a></td>
		<td>&nbsp;</td>
		<td>.prevAll( )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/prevAll">prevAll</a></td>
		<td>&nbsp;</td>
		<td>.prevAll( selector )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/event.preventDefault/">preventDefault</a></td>
		<td><a href="Events/EventObject/preventDefault.cfm">Example</a></td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/prevUntil">prevUntil</a></td>
		<td>&nbsp;</td>
		<td>.prevUntil( selector)</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/prevUntil">prevUntil</a></td>
		<td>&nbsp;</td>
		<td>.prevUntil( filter )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/prevUntil">PrevUntil</a></td>
		<td>&nbsp;</td>
		<td>.prevUntil( element )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/prevUntil">PrevUntil</a></td>
		<td>&nbsp;</td>
		<td>.prevUntil( element, filter)</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/prevUntil">PrevUntil</a></td>
		<td>&nbsp;</td>
		<td>.prevUntil( selector, filter)</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/category/events/event-object/">prevValue</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>&nbsp;</td>
		<td>setting</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.ajax#jQuery-ajax-settings">processData</a></td>
		<td>&nbsp;</td>
		<td>Default: true</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Deferred</td>
		<td>&nbsp;</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/promise/">promise</a></td>
		<td><a href="http://www.bennadel.com/blog/2274-jQuery-Can-Provide-Queue-Based-Promise-Objects.htm">Example</a></td>
		<td>prevent other code from interfering with the progress of a request.</td>
		<td>Promise</td>
	</tr>
	<tr>
		<td>Attributes</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/prop/#prop1">prop</a></td>
		<td><a href="Attributes/prop.cfm">Example</a></td>
		<td>Is the checkbox that was just clicked now checked?</td>
		<td>string</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>General Attributes</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/prop/#prop2">prop</a></td>
		<td><a href="Manipulation/GeneralAttributes/prop.cfm">Example</a></td>
		<td>.prop( propertyName, value )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>General Attributes</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/prop/#prop2">prop</a></td>
		<td>$('abbr').prop('title',function(index,X) {<br>
			&nbsp;&nbsp;&nbsp;log(index,X,this); <br>
			});</td>
		<td>.prop( propertyName, function(index, oldPropertyValue) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>General Attributes</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/prop/#prop2">prop</a></td>
		<td>var X = {<br>
			'checked':false,<br>
			'disabled':true<br>
			};<br>
			$('input').filter(':checkbox').prop(X);</td>
		<td>var X = {};<br>
			X.checked = false;<br>
			X.disabled = true;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>&nbsp;</td>
		<td>Property</td>
		<td>Inter</td>
		<td><a href="https://developer.mozilla.org/en/DOM/window.location">protocol</a></td>
		<td>&nbsp;</td>
		<td>the protocol of the URL.</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Properties</td>
		<td>&nbsp;</td>
		<td>Property</td>
		<td>No</td>
		<td><a href="http://docs.jquery.com/Types#Prototype">prototype</a></td>
		<td>jQuery.prototype</td>
		<td><a href="http://james.padolsey.com/javascript/things-you-may-not-know-about-jquery/">Use $.fn instead.</a></td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.proxy/">proxy</a></td>
		<td>&nbsp;</td>
		<td>jQuery.proxy( function, context )</td>
		<td>Function</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.proxy/">proxy</a></td>
		<td>&nbsp;</td>
		<td>jQuery.proxy( context, name )</td>
		<td>Function</td>
	</tr>
	<tr>
		<td>Internals</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/pushStack/">pushStack</a></td>
		<td>&nbsp;</td>
		<td>.pushStack( elements )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Internals</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/pushStack/">pushStack</a></td>
		<td>&nbsp;</td>
		<td>.pushStack( elements, name, arguments )</td>
		<td>jQuery</td>
	</tr>
	<tr id="q">
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/text.html#edef-Q">q</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Custom</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/queue/#queue1">queue</a></td>
		<td>&nbsp;</td>
		<td>.queue()</td>
		<td>Array</td>
	</tr>
	<tr>
		<td>Data</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/queue/#queue1">queue</a></td>
		<td>&nbsp;</td>
		<td>.queue(newQueue )</td>
		<td>Array</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/queue/#queue2">queue</a></td>
		<td>&nbsp;</td>
		<td>.queue(  queueName , newQueue )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/queue/#queue2">queue</a></td>
		<td>&nbsp;</td>
		<td>.queue( callback( next ) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/queue/#queue2">queue</a></td>
		<td>&nbsp;</td>
		<td>.queue(  queueName , callback( next ) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/jQuery.queue/#jQuery-queue1">queue</a></td>
		<td>&nbsp;</td>
		<td>jQuery.queue( element )</td>
		<td>Array</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/jQuery.queue/#jQuery-queue1">queue</a></td>
		<td>&nbsp;</td>
		<td>jQuery.queue( element, [ queueName ] )</td>
		<td>Array</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/jQuery.queue/#jQuery-queue2">queue</a></td>
		<td>&nbsp;</td>
		<td>jQuery.queue( element, queueName, newQueue )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/jQuery.queue/#jQuery-queue2">queue</a></td>
		<td>&nbsp;</td>
		<td>jQuery.queue( element, queueName, callback() )</td>
		<td>jQuery</td>
	</tr>
	<tr id="r">
		<td>Selectors</td>
		<td>element</td>
		<td>selector</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/radio-selector/">radio</a></td>
		<td>var X = $('input[type=&quot;radio&quot;]');</td>
		<td>All inputs with type=&quot;radio&quot;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Document Loading</td>
		<td>register</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/ready/">ready</a></td>
		<td>$(document).ready(function() {<br />
			});</td>
		<td>Not needed if your JavaScript is aftr the item affected</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Document Loading</td>
		<td>register</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/ready/">ready</a></td>
		<td>$().ready(function() {<br />
			});</td>
		<td>$(function() {<br />
});</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Document Loading</td>
		<td>register</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/ready/">ready</a></td>
		<td><a href="Events/DocumentLoading/Ready.cfm">Example</a></td>
		<td>Not needed if you put your JavaScript just before the &lt;/body&gt; tag</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Document Loading</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/ready/">ready</a></td>
		<td>jQuery(document).ready(function($) {<br />
			});</td>
		<td>This is the expanded  syntax. See: noconflict</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Deferred</td>
		<td>Method</td>
		<td>trigger</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/deferred.reject/">reject</a></td>
		<td>&nbsp;</td>
		<td>any failCallbacks added by deferred.then or deferred.fail are called</td>
		<td>Deferred</td>
	</tr>
	<tr>
		<td>Deferred</td>
		<td>Method</td>
		<td>trigger</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/deferred.rejectWith">rejectWith</a></td>
		<td>&nbsp;</td>
		<td>call any failCallbacks with the given context and arguments</td>
		<td>Deferred</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td>relatedNode</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/event.relatedTarget/">relatedTarget</a></td>
		<td>$('a').mouseout(function(X) {   <br>
			&nbsp;&nbsp;&nbsp;log(X.relatedTarget);<br>			
			});</td>
		<td>The other DOM element involved in the event.<br>
			For mouseout, indicates the element being entered; for mousein, indicates the element being exited.</td>
		<td>Element</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Removal</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/remove">remove</a></td>
		<td>$('#myID').remove('p');</td>
		<td>Deletes every p tag in #myID</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Removal</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/remove">remove</a></td>
		<td>$('p').remove();</td>
		<td>Deletes every p tag. See empty. See detach.</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Attributes</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/removeAttr">removeAttr</a></td>
		<td>$('input').removeAttr('disabled');</td>
		<td>Use prop  to set properties = false</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Attributes</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/removeClass/">removeClass</a></td>
		<td><a href="Attributes/removeClass.cfm">Example</a></td>
		<td>Removes all classes</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>Class Attributes</td>
		<td>setter</td>
		<td>Intro</td>
		<td><a href="http://api.jquery.com/removeClass/">removeClass</a></td>
		<td><a href="Manipulation/ClassAttributes/removeClass.cfm">Example</a></td>
		<td>&lt;p class=&quot;myClass1 myClass2&quot;&gt; becomes:<br />
			&lt;p class=&quot;myClass2&quot;&gt;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>CSS</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/removeClass/">removeClass</a></td>
		<td>$('p').removeClass(function(index,X) {<br>
			&nbsp;&nbsp;&nbsp;log(index,X,this); <br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Data</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.removeData/">removeData</a></td>
		<td>var X = $('#myID')[0];
			<p>jQuery.data(X, 'A', 1);<br>
				jQuery.removeData(X, 'A'); </p></td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/removeData/">removeData</a></td>
		<td>$('p').data('A',1);<br>
			$('p').data('B',2);
			<br>
$('p').removeData();</td>
		<td>all values are removed</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Miscellaneous</td>
		<td>Data Storage</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/removeData/">removeData</a></td>
		<td>$('p').data('A',1);<br>
			$('p').removeData('A');</td>
		<td>The value of the property being removed will revert to the value of the data attribute of the same name in the DOM</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Attributes</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/removeProp/">removeProp</a></td>
		<td>&nbsp;</td>
		<td>Don't use to remove native properties such as checked, disabled, or selected</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>General Attributes</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/removeProp/">removeProp</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Replacement</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/replaceAll/">replaceAll</a></td>
		<td>$('&lt;div&gt;Removed&lt;/div&gt;').replaceAll('p');</td>
		<td>&lt;p&gt;Paragraph&lt;/p&gt; becomes:<br>
			&lt;div&gt;Removed&lt;/div&gt;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Replacement</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/replaceWith/">replaceWith</a></td>
		<td>$('p').replaceWith('&lt;div&gt;Removed&lt;/div&gt;');</td>
		<td>&lt;p&gt;Paragraph&lt;/p&gt; becomes:<br>
&lt;div&gt;Removed&lt;/div&gt;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Replacement</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/replaceWith/">replaceWith</a></td>
		<td>$('p').replaceWith(function(index,X) {<br>
			&nbsp;&nbsp;&nbsp;log(index,X,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Extension</td>
		<td>selector</td>
		<td>Inter</td>
		<td>reset</td>
		<td>var X =  $('input[type=&quot;reset&quot;]');</td>
		<td>&nbsp;</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Browser Events</td>
		<td>register</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/resize/">resize</a></td>
		<td>$(window).resize(function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(window,X,this);<br>
			});</td>
		<td>can be  continuous as the resizing is in progress</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Browser Events</td>
		<td>register</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/resize/">resize</a></td>
		<td>$(window).resize({A:1,B:2},function(X) {<br>
	&nbsp;&nbsp;&nbsp;log(window,X.data,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Browser Events</td>
		<td>trigger</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/resize/">resize</a></td>
		<td>$(window).resize();</td>
		<td>Triggers the resize event</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Deferred</td>
		<td>Method</td>
		<td>trigger</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/deferred.resolve/">resolve</a></td>
		<td><a href="DeferredObject/resolve.cfm">Example</a></td>
		<td>call any doneCallbacks added by deferred.then or deferred.done</td>
		<td>Deferred</td>
	</tr>
	<tr>
		<td>Deferred</td>
		<td>Method</td>
		<td>trigger</td>
		<td>Adv</td>
		<td>resolveWith</td>
		<td>&nbsp;</td>
		<td>call any doneCallbacks with the given context and args.</td>
		<td>Deferred</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/event.result/">result</a></td>
		<td>$(&quot;button&quot;).click(function() {   return &quot;hey&quot;; }); <br>
			$(&quot;button&quot;).click(function(X) {   <br>
			&nbsp;&nbsp;&nbsp;log(X.result ); <br>
			});</td>
		<td>The last value returned by a handler  triggered by this event</td>
		<td>Object</td>
	</tr>
	<tr>
		<td>JavaScript</td>
		<td>&nbsp;</td>
		<td>JavaScript</td>
		<td>Intro</td>
		<td>return false;</td>
		<td><a href="JavaScript/returnFalse.cfm">Example</a></td>
		<td>See: myEvent.stopPropagation();<br />
			See: myEvent.preventDefault();</td>
		<td>Boolean</td>
	</tr>
	<tr id="s">
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/present/graphics.html#edef-S">s</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/text.html#edef-SAMP">samp</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td>screenX</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td>screenY</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/interact/scripts.html#edef-SCRIPT">script</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>&nbsp;</td>
		<td>setting</td>
		<td>Adv</td>
		<td>scriptCharset</td>
		<td>&nbsp;</td>
		<td>Where dataType =  &quot;jsonp&quot; or &quot;script&quot;  and type=&quot;GET&quot;</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Browser Events</td>
		<td>register</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/scroll/">scroll</a></td>
		<td>$(window).scroll(function (X) {        <br>
	&nbsp;&nbsp;&nbsp;log(X,this);<br>
			});</td>
		<td>when the user scrolls</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Events</td>
		<td>Browser Events</td>
		<td>register</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/scroll/">scroll</a></td>
		<td>&nbsp;</td>
		<td>.scroll( [ eventData ], handler(eventObject) )</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Events</td>
		<td>Browser Events</td>
		<td>trigger</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/scroll/">scroll</a></td>
		<td> $('#myID').scroll();</td>
		<td>Triggers the scroll event</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>CSS</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/scrollLeft/#scrollLeft1">scrollLeft</a></td>
		<td>var X = $('p').scrollLeft();</td>
		<td>Horizontal position of the scroll bar<br>
			0 if not scrollable</td>
		<td>Integer</td>
	</tr>
	<tr>
		<td>Offset</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/scrollLeft/#scrollLeft2">scrollLeft</a></td>
		<td>$('p').filter(':first').scrollLeft(300);</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>Style Properties</td>
		<td>setter</td>
		<td>Adv</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>CSS</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/scrollTop/#scrollTop1">scrollTop</a></td>
		<td>var X = $('p').scrollTop();</td>
		<td>Vertical position of the scroll bar<br>
			0 if not scrollable</td>
		<td>Integer</td>
		</tr>
	<tr>
		<td>Offset</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/scrollTop/#scrollTop2">scrollTop</a></td>
		<td>$('p').filter(':first').scrollTop(300);</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Manipulation</td>
		<td>Style Properties</td>
		<td>setter</td>
		<td>Adv</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>&nbsp;</td>
		<td>Property</td>
		<td>Inter</td>
		<td><a href="https://developer.mozilla.org/en/DOM/window.location">search</a></td>
		<td>&nbsp;</td>
		<td>the part of the URL that follows the ? symbol, including the ? symbol.</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/interact/forms.html#edef-SELECT">select</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Form Events</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/select/">select</a></td>
		<td>$('#myID').select(function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X,this);<br>
			});</td>
		<td>Not to be confused with selected. This is when the user selects some text.</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Form Events</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/select/">select</a></td>
		<td>$('#myID').select({A:1,B:2},function(X) {<br>
	&nbsp;&nbsp;&nbsp;log(X.data,this);<br>
			});</td>
		<td>.select( [ eventData ], handler(eventObject) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Forms</td>
		<td>&nbsp;</td>
		<td>trigger</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/select/">select</a></td>
		<td>$('#myID').select();</td>
		<td>Triggers the select event</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Extension</td>
		<td>selector</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/selected-selector/">selected</a></td>
		<td>$(&quot;select option:selected&quot;).each(function () {<br>
			});</td>
		<td>&nbsp;</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>jQuery</td>
		<td>&nbsp;</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://docs.jquery.com/Types#Selector">selector</a></td>
		<td><a href="jQuery/selector.cfm">Example</a></td>
		<td>One of the properties in a jQuery object</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Forms</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/serialize/">serialize</a></td>
		<td>function showValues() {       <br>
	&nbsp;&nbsp;&nbsp;$('#myID').text($('form').serialize());<br>
			}     <br>
			$(':checkbox, :radio').click(showValues);<br>
			$('select').change(showValues);     <br>
			showValues();</td>
		<td>creates a text string in standard URL-encoded notation</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Helper Functions</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/serialize/">serialize</a></td>
		<td>$('form').submit(function() {   <br>
	&nbsp;&nbsp;&nbsp;			alert($(this).serialize());   <br>
	&nbsp;&nbsp;&nbsp; return false; <br>
			});</td>
		<td>a=1&amp;b=2&amp;c=3&amp;d=4&amp;e=5<br>
			single=Single&amp;multiple=Multiple2&amp;multiple=Multiple3<br>			
			&amp;check=check1&amp;check=check2&amp;radio=radio2</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Forms</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/serializeArray/">serializeArray</a></td>
		<td>$('form').submit(function(myEvent) {   <br>
			&nbsp;&nbsp;&nbsp;myEvent.preventDefault(); <br>
	&nbsp;&nbsp;&nbsp;var X = $(this).serializeArray();   <br>
			});</td>
		<td>&nbsp;</td>
		<td>Array</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Helper Functions</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/serializeArray/">serializeArray</a></td>
		<td>function showValues() {       <br>
			&nbsp;&nbsp;&nbsp;var X = $(':input').serializeArray();       <br>
			&nbsp;&nbsp;&nbsp; $(&quot;#myID&quot;).empty();       <br>
			&nbsp;&nbsp;&nbsp; jQuery.each(X, function(index, field){         <br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $(&quot;#myID&quot;).append(field.value + &quot; &quot;);       <br>
			&nbsp;&nbsp;&nbsp; });     <br>
			}
			<p>$(&quot;:checkbox, :radio&quot;).click(showValues);     <br>
				$(&quot;select&quot;).change(showValues);     <br>
			showValues(); </p></td>
		<td>&nbsp;</td>
		<td>Array</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://www.coldfusionjedi.com/index.cfm/2011/8/23/jQuery-Quickie--Noticing-ctrlshift-keyboard-events">shiftKey</a></td>
		<td><a href="Events/EventObject/shiftKey.cfm">Example</a></td>
		<td>myEvent.shiftKey</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Basics</td>
		<td>setter</td>
		<td>Intro</td>
		<td><a href="http://api.jquery.com/show/">show</a></td>
		<td><a href="Effects/Basics/Show.cfm">Example</a></td>
		<td>Adds style=&quot;display: block;&quot;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Basics</td>
		<td>setter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/show/">show</a></td>
		<td><a href="Effects/Basics/ShowSlow.cfm">Example</a></td>
		<td>.show( duration)</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Basics</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/show/">show</a></td>
		<td>$('p').show('slow',function(X) {<br>
	&nbsp;&nbsp;&nbsp;log(X,this);<br>
			});</td>
		<td>.show( duration, [ callback ] )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Basics</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/show/">show</a></td>
		<td>$('p').show('slow','swing',function(X) {<br>
	&nbsp;&nbsp;&nbsp;log(X,this);<br>
			});</td>
		<td>.show( [ duration ], [ <a href="http://jqueryui.com/demos/effect/#easing">easing</a> ], [ callback ] )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/siblings/">siblings</a></td>
		<td><a href="Traversing/TreeTraversal/siblings.cfm">Example</a></td>
		<td>tds except the  one clicked</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/siblings/">siblings</a></td>
		<td><a href="Traversing/TreeTraversal/siblingsLast.cfm">Example</a></td>
		<td>siblings(selector)</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Tree Traversal</td>
		<td>getter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/siblings/">siblings</a></td>
		<td><a href="Traversing/TreeTraversal/siblingsSelector.cfm">Example</a></td>
		<td>siblings()</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Miscellaneous</td>
		<td>DOM Element Methods</td>
		<td>getter</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/size/">size</a></td>
		<td>var X = $('p').size();</td>
		<td>var X = $('p).length;</td>
		<td>Number</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/slice/">slice</a></td>
		<td>var X = $('li').slice(2);</td>
		<td>3rd list item and remaining</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/slice/">slice</a></td>
		<td>var X = $('li').slice(2, 4);</td>
		<td>3rd and 4th list item</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/slice/">slice</a></td>
		<td>var X = $('li').slice(-2);</td>
		<td>2nd to last list item and remaining</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Traversing</td>
		<td>Filtering</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/slice/">slice</a></td>
		<td>var X = $('li').slice(-4, -2);</td>
		<td>4th from last to 2nd to last list item</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Sliding</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/slideDown/">slideDown</a></td>
		<td>$('p').slideDown();</td>
		<td>Reveals the paragraph</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Effects</td>
		<td>Sliding</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/slideDown/">slideDown</a></td>
		<td>$('p').slideDown('slow');</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Effects</td>
		<td>Sliding</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/slideDown/">slideDown</a></td>
		<td>$('p').slideDown('slow',function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Sliding</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/slideDown/">slideDown</a></td>
		<td>$('p').slideDown('slow','swing');</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Sliding</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/slideDown/">slideDown</a></td>
		<td>$('p').slideDown('slow','swing',function(X) {<br>
	&nbsp;&nbsp;&nbsp;log(X,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Effects</td>
		<td>Sliding</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/slideToggle/">slideToggle</a></td>
		<td>$('p').slideToggle();</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Effects</td>
		<td>Sliding</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/slideToggle/">slideToggle</a></td>
		<td>$('p').slideToggle('slow');</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Effects</td>
		<td>Sliding</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/slideToggle/">slideToggle</a></td>
		<td>$('p').slideToggle('slow',function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Effects</td>
		<td>Sliding</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/slideToggle/">slideToggle</a></td>
		<td>$('p').slideToggle('slow','swing');</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
		</tr>
	<tr>
		<td>Effects</td>
		<td>Sliding</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/slideToggle/">slideToggle</a></td>
		<td>$('p').slideToggle('slow','swing',function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Sliding</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/slideUp">slideUp</a></td>
		<td>$('p').slideUp();</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Sliding</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/slideUp">slideUp</a></td>
		<td>$('p').slideUp('slow');</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Sliding</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/slideUp">slideUp</a></td>
		<td>$('p').slideUp('slow',function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Sliding</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/slideUp">slideUp</a></td>
		<td>$('p').slideUp('slow','swing');</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Sliding</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/slideUp">slideUp</a></td>
		<td>$('p').slideUp('slow','swing',function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/present/graphics.html#edef-SMALL">small</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/global.html#edef-SPAN">span</a></td>
		<td><a href="Selectors/Element/Span.cfm">Example</a></td>
		<td>An array of every span element</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td>srcElement</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>statusCode</td>
		<td>jQuery.ajax({   <br>
	&nbsp;&nbsp;&nbsp;			statusCode: {     <br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 404: function() {       <br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;log('page not found');     <br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }   <br>
	&nbsp;&nbsp;&nbsp; } <br>
			});</td>
		<td>Default: {}</td>
		<td>map</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Custom</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/stop/">stop</a></td>
		<td>$('#myID').click(function(){ <br>
	&nbsp;&nbsp;&nbsp;			$('.myClass').stop(); <br>
			});</td>
		<td>Stops animations on myClass</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Custom</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/stop/">stop</a></td>
		<td>&nbsp;</td>
		<td>remove queued animation</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Custom</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/stop/">stop</a></td>
		<td>$('p').hover(function() {   <br>
	&nbsp;&nbsp;&nbsp;			$(this).find('img').stop(true, true).fadeOut(); <br>
			}, function() {   <br>
	&nbsp;&nbsp;&nbsp; $(this).find('img').stop(true, true).fadeIn(); <br>
			});</td>
		<td>complete the current animation immediately</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/event.stopImmediatePropagation/">stopImmediate<br>
			Propagation</a></td>
		<td>$('span').click(function(X){   <br>
	&nbsp;&nbsp;&nbsp;X.stopImmediatePropagation(); <br>
			});</td>
		<td>Stops any sibling handlers</td>
		<td>n/a</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/event.stopPropagation/">stopPropagation</a></td>
		<td>$('span').click(function(X){ <br>
	&nbsp;&nbsp;&nbsp;X.stopPropagation(); <br>
			});</td>
		<td>Stops any parent handlers</td>
		<td>n/a</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/present/graphics.html#edef-STRIKE">strike</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/present/styles.html#edef-STYLE">strong</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/present/styles.html#edef-STYLE">style</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/text.html#edef-SUB">sub</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>jQuery</td>
		<td>Method</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.sub/">sub</a></td>
		<td>&nbsp;</td>
		<td>Used to override jQuery methods</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Extension</td>
		<td>selector</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/submit/">submit</a></td>
		<td>var X = $('input[type=&quot;submit&quot;]');</td>
		<td>&nbsp;</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Form Events</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/submit/">submit</a></td>
		<td>$('#myID').submit(function(X) {<br>
	&nbsp;&nbsp;&nbsp;log(X,this);<br>
	&nbsp;&nbsp;&nbsp;return false; <br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Form Events</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/submit/">submit</a></td>
		<td>$('#myID).submit({A:1,B:2},function(X) {<br>
	&nbsp;&nbsp;&nbsp;log(X.data,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Forms</td>
		<td>&nbsp;</td>
		<td>trigger</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/submit/">submit</a></td>
		<td>$('form').submit();</td>
		<td>Triggers the submit event</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>success</td>
		<td>&nbsp;</td>
		<td>success(myResult, myStatus, myXHR)</td>
		<td>Array</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>success</td>
		<td>success: function(myResult, myStatus, myXHR)</td>
		<td>success(myResult, myStatus, myXHR)</td>
		<td>Function</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/text.html#edef-SUP">sup</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Properties</td>
		<td>Global jQuery</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.support/">support</a></td>
		<td><a href="Utilities/jQuery.Support.cfm">Example</a></td>
		<td>&nbsp;</td>
		<td>Object</td>
	</tr>
	<tr id="t">
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/tables.html#edef-TABLE">table</a></td>
		<td><a href="Selectors/Element/Table.cfm">Example</a></td>
		<td>See: navigator.userAgent</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/event.target/">target</a></td>
		<td><a href="Events/EventObject/target.cfm">Example</a></td>
		<td>X.target === <em>this</em> if not event bubbling<br>
			See delegate</td>
		<td>Element</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/tables.html#edef-TBODY">tbody</a></td>
		<td><a href="Selectors/Element/Tbody.cfm">Example</a></td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/tables.html#edef-TD">td</a></td>
		<td><a href="Selectors/Element/td.cfm">Example</a></td>
		<td>Careful to use tbody td or thead th</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Extension</td>
		<td>selector</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/text-selector/">text</a></td>
		<td>var X = $('input[type=&quot;text&quot;]');</td>
		<td>&nbsp;</td>
		<td>filter</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Insertion, Inside</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/text/#text1">text</a></td>
		<td><a href="Manipulation/DOMInsertionInside/text.cfm">Example</a></td>
		<td>$('p').text();</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Insertion, Inside</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/text/#text2">text</a></td>
		<td><a href="Manipulation/DOMInsertionInside/text2.cfm">Example</a></td>
		<td>$('p').text('deleted');</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Insertion, Inside</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/text/#text2">text</a></td>
		<td>$('p').text(function(index,X) {<br>
			&nbsp;&nbsp;&nbsp;log(index,X,this);<br>
			});</td>
		<td>.text( function(index, text) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>Low-Level method</td>
		<td>&nbsp;</td>
		<td>Adv</td>
		<td>text</td>
		<td><a href="Utilities/jQuery.text.cfm">Example</a></td>
		<td><a href="http://addyosmani.com/jqprovenperformance">Performance tip #10</a> (slide 78)</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/interact/forms.html#edef-TEXTAREA">textarea</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/tables.html#edef-TFOOT">tfoot</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/tables.html#edef-TH">th</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/tables.html#edef-THEAD">thead</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Deferred</td>
		<td>&nbsp;</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/deferred.then">then</a></td>
		<td><a href="DeferredObject/then.cfm">Example</a></td>
		<td><a href="http://www.erichynds.com/jquery/using-deferreds-in-jquery/">blog post</a></td>
		<td>Deferred</td>
	</tr>
	<tr>
		<td>JavaScript</td>
		<td>&nbsp;</td>
		<td>Object</td>
		<td>Inter</td>
		<td>this</td>
		<td>$('p').click(function() {<br>
			&nbsp;&nbsp;&nbsp;	log(this);<br />
			&nbsp;&nbsp;&nbsp;log($(this));<br>
			});			<br /></td>
		<td><em>this</em> refers to the DOM element that caused the event</td>
		<td>Object</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>timeout</td>
		<td>&nbsp;</td>
		<td>See: ajaxSetup</td>
		<td>Number</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/event.timeStamp/">timeStamp</a></td>
		<td>var last;<br>
			$('div').click(function(X) {<br>
	&nbsp;&nbsp;&nbsp;log(X.timeStamp - last);<br>
	&nbsp;&nbsp;&nbsp;last = event.timeStamp; <br>
			});</td>
		<td>milliseconds since 1/1/1970</td>
		<td>Number</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/global.html#edef-TITLE">title</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Miscellaneous</td>
		<td>DOM Element methods</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/toArray/">toArray</a></td>
		<td>var X = $('p').toArray();</td>
		<td>Set as a standard array</td>
		<td>Array</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td>toElement</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Basics</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/toggle/">toggle</a></td>
		<td>$('p').toggle();</td>
		<td>.toggle( )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Basics</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/toggle/">toggle</a></td>
		<td>$('p').toggle('slow');</td>
		<td>.toggle( [ duration ] )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Basics</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/toggle/">toggle</a></td>
		<td> $('p').toggle('slow', function(X) {     <br>
	&nbsp;&nbsp;&nbsp;log(X,this);<br>});</td>
		<td>.toggle( [ duration ], [ callback ] )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Basics</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/toggle/">toggle</a></td>
		<td>$('p').toggle('slow','swing');</td>
		<td>.toggle( [ duration ], [ easing ] )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Basics</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/toggle/">toggle</a></td>
		<td>$('p').toggle('slow','swing',function(X) { <br>
	&nbsp;&nbsp;&nbsp;log(X,this);<br>
			});</td>
		<td>.toggle( [ duration ], [ easing ], [ callback ] )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Effects</td>
		<td>Basics</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/toggle/">toggle</a></td>
		<td>var X = true;<br>
			$('p').toggle(X);</td>
		<td>if ( X == true ) {   <br>
&nbsp;&nbsp;&nbsp;			$('#myID').show(); <br>
} else if ( X == false ) {   <br>
&nbsp;&nbsp;&nbsp; $('#myID').hide(); <br>
}</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Mouse Events</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/toggle-event/">toggle</a></td>
		<td>$('p').toggle(       function () { <br>
			&nbsp;&nbsp;&nbsp;			$(this).addClass('toggle1');<br>
			},<br>
			function () {<br>
			&nbsp;&nbsp;&nbsp;         $(this).addClass('toggle2');<br>
			},<br>
			function () { <br>
			&nbsp;&nbsp;&nbsp;       $(this).addClass('toggle3');<br>
			});</td>
		<td>.toggle( handler(eventObject), handler(eventObject) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Attributes</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Intro</td>
		<td><a href="http://api.jquery.com/toggleClass/">toggleClass</a></td>
		<td><a href="Attributes/toggleClass.cfm">Example</a></td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>Class Attributes</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/toggleClass/">toggleClass</a></td>
		<td>			$('p').toggleClass('myClass', switch);</td>
		<td>switch = true / false for added / removed</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>CSS</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/toggleClass/">toggleClass</a></td>
		<td>&nbsp;</td>
		<td>$('p').toggleClass( function(index, X), [ switch ] )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/tables.html#edef-TR">tr</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>traditional</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>Boolean</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>trigger</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/trigger/">trigger</a></td>
		<td>$('#myID').trigger('click');</td>
		<td>.trigger( eventType )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>trigger</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/trigger/">trigger</a></td>
		<td>$('#myID).bind('custom', function(myEvent, X) {<br>
			&nbsp;&nbsp;&nbsp;log(myEvent,X,this); <br>
			}); <br>
			$('#myID').trigger('custom', 1);<br></td>
		<td>.trigger( eventType, extraParameter )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>trigger</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/trigger/">trigger</a></td>
		<td>$('#myID).bind('custom', function(myEvent, A, B) {<br>
	&nbsp;&nbsp;&nbsp;log(myEvent,A,B,this); <br>
			}); <br>
			$('#myID').trigger('custom', [1,2]);<br></td>
		<td>.trigger( eventType, extraParameters )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>trigger</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/trigger/">trigger</a></td>
		<td>$('#myID').trigger('click');</td>
		<td>Automates user interaction for debugging<br></td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>trigger</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/triggerHandler/">triggerHandler</a></td>
		<td>&nbsp;</td>
		<td>does not cause the default behavior of an event to occur (such as a form submission).<br>
			only affects the first matched element.<br>
			do not bubble up the DOM hierarchy<br>
			returns whatever value was returned by the last handler</td>
		<td>Object</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>trigger</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/triggerHandler/">triggerHandler</a></td>
		<td>&nbsp;</td>
		<td>.triggerHandler( eventType, extraParameter )</td>
		<td>Object</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>trigger</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/triggerHandler/">triggerHandler</a></td>
		<td>&nbsp;</td>
		<td>.triggerHandler( eventType, extraParameters )</td>
		<td>Object</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/jQuery.trim/">trim</a></td>
		<td>$('input').change(function() {<br>
			&nbsp;&nbsp;&nbsp;			X = jQuery.trim($(this).text()); <br>
			});		</td>
		<td>removes  newlines, spaces,  non-breaking spaces,  tabs from beginning and end</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/present/graphics.html#edef-TT">tt</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Inter</td>
		<td>type</td>
		<td>&nbsp;</td>
		<td>Default: GET<br>
			GET,POST,PUT or DELETE</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/event.type/">type</a></td>
		<td>$('p').bind('click dblclick', function(X) {   <br>
	&nbsp;&nbsp;&nbsp;			log(X.type);<br> 
			});</td>
		<td>blur, focus, focusin, focusout, load, resize, scroll, unload, click, dblclick, mousedown, mouseup, mousemove, mouseover, mouseout, mouseenter, mouseleave, change, select, submit, keydown, keypress, keyup, error</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.type/">type</a></td>
		<td><a href="Utilities/jQuery.type.cfm">Example</a></td>
		<td>object, boolean, number, string, function, <strong>array</strong>, <strong>date</strong>, <strong>regexp</strong></td>
		<td>String</td>
	</tr>
	<tr id="u">
		<td>Selectors</td>
		<td>Element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/present/graphics.html#edef-U">u</a></td>
		<td>&nbsp;</td>
		<td>An array of every underlined element</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/lists.html#edef-UL">ul</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/unbind">unbind</a></td>
		<td>$('#myID').unbind('click');</td>
		<td>Removes the click event type</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/unbind">unbind</a></td>
		<td>var myHandler = function(X) {   <br>
			&nbsp;&nbsp;&nbsp;log(X,this);<br>
			};
			<p>			$('#myID').bind('click', myHandler); <br>
			$('#myID').unbind('click', myHandler);</p></td>
		<td>Removes myHandler from the click event type</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/unbind">unbind</a></td>
		<td>&nbsp;</td>
		<td>.unbind( eventType, false )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/unbind">unbind</a></td>
		<td>$('#myID').unbind();</td>
		<td>removes all handlers</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/undelegate/">undelegate</a></td>
		<td>&nbsp;</td>
		<td>.undelegate()</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/undelegate/">undelegate</a></td>
		<td>&nbsp;</td>
		<td>.undelegate( selector, eventType )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/undelegate/">undelegate</a></td>
		<td>&nbsp;</td>
		<td>.undelegate( selector, eventType, handler )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/undelegate/">undelegate</a></td>
		<td>&nbsp;</td>
		<td>.undelegate( selector, events )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Handler Attachment</td>
		<td>register</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/undelegate/">undelegate</a></td>
		<td>&nbsp;</td>
		<td>.undelegate( namespace )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Utilities</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.unique/">unique</a></td>
		<td>jQuery.unique( array )</td>
		<td>			See <a href="http://api.jquery.com/jQuery.makeArray/">jQuery.makeArray</a></td>
		<td>Array</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Document Loading</td>
		<td>register</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/unload/">unload</a></td>
		<td>$(window).unload(function(X) {<br>
			&nbsp;&nbsp;&nbsp;log(X,this); <br>
			});</td>
		<td>Cannot be cancelled</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Document Loading</td>
		<td>register</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/unload/">unload</a></td>
		<td>$(window).unload({A:1,B:2},function(X) {<br>
	&nbsp;&nbsp;&nbsp;log(X.data,this);			<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Insertion, around</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/unwrap">unwrap</a></td>
		<td>$('p').unwrap();</td>
		<td>&lt;div&gt;&lt;p&gt;Paragraph&lt;/p&gt;&lt;/div&gt; becomes:<br>
			&lt;p&gt;Paragraph&lt;/p&gt;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Begin</td>
		<td>url</td>
		<td><a href="Ajax/LowLevelInterface/AjaxURL.cfm">Example</a></td>
		<td>Default: the current page</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>username</td>
		<td>&nbsp;</td>
		<td>response to an HTTP access authentication request.</td>
		<td>String</td>
	</tr>
	<tr id="v">
		<td>Attributes</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/val/#val1">val</a></td>
		<td><a href="Forms/ValSelect.cfm">Example</a></td>
		<td>select</td>
		<td>String</td>
	</tr>
	<tr>
		<td>Forms</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/val/#val1">val</a></td>
		<td><a href="Forms/ValMultiple.cfm">Example</a></td>
		<td>select multiple</td>
		<td>Number</td>
	</tr>
	
	<tr>
		<td>Manipulation</td>
		<td>General Attributes</td>
		<td>setter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/val/#val2">val</a></td>
		<td><a href="Manipulation/GeneralAttributes/val.cfm">Example</a></td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>General Attributes</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/val/#val2">val</a></td>
		<td>$('input').val(function(index, X) {<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>element</td>
		<td>element</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html4/struct/text.html#edef-VAR">var</a></td>
		<td><a href="Selectors/Intro/var.cfm">Example</a></td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td>view</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Selectors</td>
		<td>Visibility filter</td>
		<td>selector</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/visible-selector/">visible</a></td>
		<td>var X = $('tr').filter(':visible);</td>
		<td>See: hidden</td>
		<td>filter</td>
	</tr>
	<tr id="w">
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td>wheelDelta</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Core</td>
		<td>&nbsp;</td>
		<td>trigger</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/jQuery.when/">when</a></td>
		<td><a href="DeferredObject/when.cfm">Example</a></td>
		<td>Executes all the ajax commands and then calls success/fail</td>
		<td>Promise</td>
	</tr>
	<tr>
		<td>Events</td>
		<td>Event Object</td>
		<td>Property</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/event.which/">which</a></td>
		<td>$('#myID').bind('keydown',function(X){    <br>
	&nbsp;&nbsp;&nbsp;			log(X.which );<br>
			});</td>
		<td>normalizes event.keyCode and event.charCode</td>
		<td>Number</td>
	</tr>
	<tr>
		<td>CSS</td>
		<td>&nbsp;</td>
		<td>getter</td>
		<td>Begin</td>
		<td><a href="http://api.jquery.com/width/#width1">width</a></td>
		<td><a href="Dimensions/Width.cfm">Example</a></td>
		<td>Width of the window<br>
			Width of the document</td>
		<td>Integer</td>
	</tr>
	<tr>
		<td>Dimensions</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>No</td>
		<td><a href="http://api.jquery.com/width/#width2">width</a></td>
		<td> $('p').width('30em') ;<br>
			$('input').width(80);</td>
		<td>Default: px<br>
			Use css instead</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>Style Properties</td>
		<td>setter</td>
		<td>Adv</td>
		<td><a href="http://api.jquery.com/width/#width2">width</a></td>
		<td>$('p').width(function(index,X) {<br>
			&nbsp;&nbsp;&nbsp;log(index,X,this);<br>
			});</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Insertion, Around</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/wrap/">wrap</a></td>
		<td><a href="Manipulation/DOMInsertionAround/wrap.cfm">Example</a></td>
		<td>wrap( wrappingElement )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/wrap/">wrap</a></td>
		<td><a href="Manipulation/DOMInsertionAround/WrapFunction.cfm">Example</a></td>
		<td>wrap( function(index) )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Insertion, Around</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/wrapAll/">wrapAll</a></td>
		<td><a href="Manipulation/DOMInsertionAround/wrapAll.cfm">Example</a></td>
		<td>&lt;div&gt;<br>
&nbsp;&nbsp;&nbsp;&lt;p&gt;A&lt;/p&gt;<br>
&nbsp;&nbsp;&nbsp;&lt;p&gt;B&lt;/p&gt;<br>
&lt;/div&gt;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>DOM Insertion, Around</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/wrapInner/">wrapInner</a></td>
		<td><a href="Manipulation/DOMInsertionAround/wrapInner.cfm">Example</a></td>
		<td>wrapInner( wrappingElement )</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Manipulation</td>
		<td>&nbsp;</td>
		<td>setter</td>
		<td>Inter</td>
		<td><a href="http://api.jquery.com/wrapInner/">wrapInner</a></td>
		<td>$('p').wrapInner(function() {<br>
			&nbsp;&nbsp;&nbsp;log(this);<br>
			});</td>
		<td>wrapInner( function(index) )</td>
		<td>jQuery</td>
	</tr>
	<tr id="x">
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>xhr</td>
		<td>&nbsp;</td>
		<td>Internet Explorer: ActiveXObject <br>
			Others Browsers: XMLHttpRequest</td>
		<td>Function</td>
	</tr>
	<tr>
		<td>Ajax</td>
		<td>Low-Level Interface</td>
		<td>setting</td>
		<td>Adv</td>
		<td>xhrFields</td>
		<td>&nbsp;</td>
		<td>use it to set withCredentials to true for cross-domain requests</td>
		<td>map</td>
	</tr>
	</tbody>
</table>
<cfinclude template="/Library/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">