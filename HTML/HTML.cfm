<cfset DefaultCat = "Document metadata,Edits,Embedded content,Forms,Grouping content,Interactive,root,Scripting,Sections,Tables,Text-level semantics,Select All">
<cfset DefaultAttr = "Global Attribute,Local Attribute,Input Attribute,Select All">
<cfset DefaultEvent = "Window Event,Form Event,Keyboard Event,Mouse Event,Media Event,Select All">
<cfparam name="url.Usage" default="Intro">
<cfparam name="url.Cat" default="#DefaultCat#">
<cfparam name="url.Attr" default="#DefaultAttr#">
<cfparam name="url.Event" default="#DefaultEvent#">
<cfif url.usage EQ "All">
	<cfset url.Usage = "Intro,Begin,Inter,Adv,No,Past,Future,Select All">
</cfif>
<cfif url.Cat EQ "All">
	<cfset url.Cat = DefaultCat>
</cfif>
<cfif url.Attr EQ "All">
	<cfset url.Attr = DefaultAttr>
</cfif>
<cfif url.Event EQ "All">
	<cfset url.Event = DefaultEvent>
</cfif>

<cfinclude template="/Library/Inc/html.cfm">
<link rel="stylesheet" type="text/css" href="HTML.css"/>
<title>HTML Matrix</title>
<cfinclude template="/Library/Inc/body.cfm">
<cfinclude template="/Library/Inc/Bootstrap.cfm">
<table id="matrix">
	<thead>
	<tr>
		<th>Category</th>
		<th>Usage</th>
		<th>HTML</th>		
		<th>Explanation</th>
		<th>Notes</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td>Document metadata</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/MarkUp/html-spec/html-spec_3.html#SEC3.2.5">!--</a></td>
		<td><a href="Comment/Comment.cfm">Example</a></td>
		<td>Comment</td>
	</tr>
	<tr id="a">
		<td>Text-level semantics</td>
		<td>Intro</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/a">a</a></td>
		<td><a href="TextLevelSemantics/a.cfm">Example</a></td>
		<td>hyperlink</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/abbr">abbr</a></td>
		<td><a href="TextLevelSemantics/abbr.cfm">Example</a></td>
		<td>an abbreviation or acronym</td>
	</tr>
	<tr>
		<td>Input Attribute</td>
		<td>Inter</td>
		<td>accept</td>
		<td>&nbsp;</td>
		<td>file upload</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>accept-charset</td>
		<td>the character encodings that are to be used for the submission. </td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/form">form</a></td>
	</tr>
	<tr>
		<td>Global Attribute</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/TR/html5/author/editing.html#the-accesskey-attribute">accesskey</a></td>
		<td><a href="GlobalAttributes/Accesskey.cfm">Example</a></td>
		<td>keyboard shortcut </td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/acronym">acronym</a></td>
		<td>an acronym</td>
		<td>abbr</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>action</td>
		<td>valid URL</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/form">form</a></td>
	</tr>
	<tr>
		<td>Sections</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/address">address</a></td>
		<td><a href="Sections/Address.cfm">Example</a></td>
		<td>the contact information for its nearest article or body element ancestor</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Begin</td>
		<td>alt</td>
		<td><a href="LocalAttribute/alt.cfm">Example</a></td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/area">area</a>, <a href="http://www.w3.org/wiki/HTML/Elements/img">img</a></td>
	</tr>
	<tr>
		<td>Input Attribute</td>
		<td>Inter</td>
		<td>alt</td>
		<td>&nbsp;</td>
		<td>Image button</td>
	</tr>
	<tr>
		<td>Embedded content</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/applet">applet</a></td>
		<td>&nbsp;</td>
		<td>No</td>
	</tr>
	<tr>
		<td>Embedded content</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/area">area</a></td>
		<td><a href="EmbeddedContent/map.cfm">Example</a></td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Sections</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/article">article</a></td>
		<td><a href="Sections/Article.cfm">Example</a></td>
		<td>an independent item section of content.</td>
	</tr>
	<tr>
		<td>Sections</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/aside">aside</a></td>
		<td><a href="Sections/Aside.cfm">Example</a></td>
		<td>a section of a page that consists of content that is tangentially related to the content around the aside element, and which could be considered separate from that content.</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>async</td>
		<td>Execute the script as soon as possible</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/script">script</a></td>
	</tr>
	<tr>
		<td>Embedded content</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/audio">audio</a></td>
		<td>a sound or an audio stream</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>audio</td>
		<td>Values: muted</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/video">video</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>autocomplete</td>
		<td><a href="LocalAttribute/AutoComplete.cfm">Example</a></td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/form">form</a></td>
	</tr>
	<tr>
		<td>Input Attribute</td>
		<td>Inter</td>
		<td>autocomplete</td>
		<td><a href="InputAttribute/AutoComplete.cfm">Example</a></td>
		<td>text, search, url, telephone, e-mail, password, date and time, date, month, week, time, local date and time, number, range, color</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>autofocus</td>
		<td>focus as soon as the page is loaded </td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/button">button</a>, <a href="http://www.w3.org/wiki/HTML/Elements/select">select</a>, <a href="http://www.w3.org/wiki/HTML/Elements/textarea">textarea</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>autoplay</td>
		<td>automatically begin playback</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/video">video</a></td>
	</tr>
	<tr id="b">
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/b">b</a></td>
		<td><a href="TextLevelSemantics/b.cfm">Example</a></td>
		<td>CSS</td>
	</tr>
	<tr>
		<td>Document metadata</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/base">base</a></td>
		<td>the document base URL for the purposes of resolving relative URLs, and the name of the default browsing context for the purposes of following hyperlinks. The element does not represent any content beyond this information.</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/basefont">basefont</a></td>
		<td>&nbsp;</td>
		<td>CSS</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/bdo">bdo</a></td>
		<td> bidirectional formatting control</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Embedded content</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/bgsound">bgsound</a></td>
		<td>&nbsp;</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/audio">audio</a></td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/big">big</a></td>
		<td>font-size: large;</td>
		<td>CSS</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/blink">blink</a></td>
		<td>blink</td>
		<td>No</td>
	</tr>
	<tr>
		<td>Grouping content</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/blockquote">blockquote</a></td>
		<td>a quoted section</td>
		<td>CSS</td>
	</tr>
	<tr>
		<td>Sections</td>
		<td>Intro</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/body">body</a></td>
		<td><a href="Sections/body.cfm">Example</a></td>
		<td>the main content of the document.</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Intro</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/br">br</a></td>
		<td><a href="TextLevelSemantics/br.cfm">Example</a></td>
		<td>line break</td>
	</tr>
	<tr>
		<td>Forms</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/button">button</a></td>
		<td>A button</td>
		<td>&nbsp;</td>
	</tr>
	<tr id="c">
		<td>Embedded content</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/canvas">canvas</a></td>
		<td>scripts with a resolution-dependent bitmap canvas</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Tables</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/caption">caption</a></td>
		<td><a href="Tables/Table.cfm">Example</a></td>
		<td>the title of the parent table</td>
	</tr>
	<tr>
		<td>Grouping content</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/center">center</a></td>
		<td>&nbsp;</td>
		<td>CSS</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>charset </td>
		<td>character encoding</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/meta">meta</a>, <a href="http://www.w3.org/wiki/HTML/Elements/script">script</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>checked</td>
		<td>the command is selected.</td>
		<td><a href="Gives the name of the command, as shown to the user">command</a></td>
	</tr>
	<tr>
		<td>Input Attribute</td>
		<td>Inter</td>
		<td>checked</td>
		<td>&nbsp;</td>
		<td>checkbox, radio button</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/cite">cite</a></td>
		<td>The title of a work</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>cite</td>
		<td>url of the source</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/q">q</a></td>
	</tr>
	<tr>
		<td>Global Attribute</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html5/author/global-attributes.html#classes">class</a></td>
		<td><a href="GlobalAttributes/Class.cfm">Example</a></td>
		<td>Supported by all  elements</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/code">code</a></td>
		<td>a fragment of computer code</td>
		<td>CSS</td>
	</tr>
	<tr>
		<td>Tables</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/col">col</a></td>
		<td><a href="Tables/ColGroup.cfm">Example</a></td>
		<td>one or more columns in a column group</td>
	</tr>
	<tr>
		<td>Tables</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/colgroup">colgroup</a></td>
		<td><a href="Tables/ColGroup.cfm">Example</a></td>
		<td>a group of columns</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>cols</td>
		<td> <a href="Forms/TextArea.cfm">Example</a></td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/textarea">textarea</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>colspan</td>
		<td><a href="Tables/Table.cfm">Example</a></td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/td">td</a>, <a href="http://www.w3.org/wiki/HTML/Elements/th">th</a></td>
	</tr>
	<tr>
		<td>Interactive</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/command">command</a></td>
		<td><a href="Interactive/Command.cfm">Example</a></td>
		<td>a command that the user can invoke.</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>content</td>
		<td>the value of the  meta data</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/meta">meta</a></td>
	</tr>
	<tr>
		<td>Global Attribute</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/TR/html5/author/editing.html#attr-contenteditable">contenteditable</a></td>
		<td><a href="GlobalAttributes/contentEditable.cfm">Example</a></td>
		<td>Supported by all  elements</td>
	</tr>
	<tr>
		<td>Global Attribute</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/TR/html5/author/the-menu-element.html#attr-contextmenu">contextmenu</a></td>
		<td> The  id  on the menu that is a context menu</td>
		<td>Supported by all  elements</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>controls</td>
		<td>User Interface</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/video">video</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Begin</td>
		<td>coords</td>
		<td>coordinates for the shape Local Attribute</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/area">area</a></td>
	</tr>
	<tr id="d">
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>data</td>
		<td>url of the resource</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/object">object</a></td>
	</tr>
	<tr>
		<td>Forms</td>
		<td><a href="http://caniuse.com/#search=datalist">Future</a></td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/datalist">datalist</a></td>
		<td><a href="Forms/Datalist.cfm">Example</a></td>
		<td>predefined options for other controls.</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>datetime</td>
		<td>Values: date, time</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/time">time</a></td>
	</tr>
	<tr>
		<td>Grouping content</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/dd">dd</a></td>
		<td><a href="GroupingContent/dl.cfm">Example</a></td>
		<td>the description, definition, or value, part of a term-description group</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>defer</td>
		<td>after the document has been parsed. </td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/script">script</a></td>
	</tr>
	<tr>
		<td>Edits</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/del">del</a></td>
		<td>removal from the document.</td>
		<td>CSS</td>
	</tr>
	<tr>
		<td>Interactive</td>
		<td><a href="http://www.caniuse.com/#search=details">Future</a></td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/details">details</a></td>
		<td><a href="Interactive/Details.cfm">Example</a></td>
		<td>a disclosure widget from which the user can obtain additional information or controls.</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/dfn">dfn</a></td>
		<td><a href="GroupingContent/dfn.cfm">Example</a></td>
		<td>the defining instance of a term</td>
	</tr>
	<tr>
		<td>Global Attribute</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/TR/html5/author/global-attributes.html#the-dir-attribute">dir</a></td>
		<td><a href="GlobalAttributes/dir.cfm">Example</a></td>
		<td>text directionality.</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>disabled</td>
		<td>make the control non-interactive and to prevent its value from being submitted</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/button">button</a>, <a href="Gives the name of the command, as shown to the user">command</a>, <a href="http://www.w3.org/wiki/HTML/Elements/fieldset">fieldset</a>, <a href="http://www.w3.org/wiki/HTML/Elements/optgroup">optgroup</a>, <a href="http://www.w3.org/wiki/HTML/Elements/option">option</a>, <a href="http://www.w3.org/wiki/HTML/Elements/select">select</a>, <a href="http://www.w3.org/wiki/HTML/Elements/textarea">textarea</a></td>
	</tr>
	<tr>
		<td>Grouping content</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/div">div</a></td>
		<td>Division</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Grouping content</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/dl">dl</a></td>
		<td><a href="GroupingContent/dl.cfm">Example</a></td>
		<td>Definition List</td>
	</tr>
	<tr>
		<td>Document metadata</td>
		<td>Intro</td>
		<td><a href="http://www.w3.org/TR/html5-diff/#doctype">doctype</a></td>
		<td><a href="DocumentMetadata/doctype.cfm">Example</a></td>
		<td>standards mode</td>
	</tr>
	<tr>
		<td>Global Attribute</td>
		<td>Future</td>
		<td><a href="http://www.w3.org/TR/html5/author/dnd.html#the-draggable-attribute">draggable</a></td>
		<td>draggable</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Global Attribute</td>
		<td>Future</td>
		<td><a href="http://www.w3.org/TR/html5/author/dnd.html#the-dropzone-attribute">dropzone</a></td>
		<td>copy, move, link</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Grouping content</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/dt">dt</a></td>
		<td><a href="GroupingContent/dl.cfm">Example</a></td>
		<td>the term, or name, part of a term-description group in a description list</td>
	</tr>
	<tr id="e">
		<td>Text-level semantics</td>
		<td>Intro</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/em">em</a></td>
		<td><a href="TextLevelSemantics/em.cfm">Example</a></td>
		<td>stress emphasis of its contents</td>
	</tr>
	<tr>
		<td>Embedded content</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/embed">embed</a></td>
		<td> a non-HTML application</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>enctype</td>
		<td>Values:     application/x-www-form-urlencoded,     multipart/form-data,     text/plain </td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/form">form</a></td>
	</tr>
	<tr id="f">
		<td>Forms</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/fieldset">fieldset</a></td>
		<td><a href="Forms/Fieldset.cfm">Example</a></td>
		<td>a set of form controls optionally grouped under a common name.</td>
	</tr>
	<tr>
		<td>Grouping content</td>
		<td><a href="http://caniuse.com/#search=figure">Begin</a></td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/figcaption">figcaption</a></td>
		<td><a href="GroupingContent/figure.cfm">Example</a></td>
		<td>a caption or legend for the contents of the parent figure element</td>
	</tr>
	<tr>
		<td>Grouping content</td>
		<td><a href="http://caniuse.com/#search=figure">Begin</a></td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/figure">figure</a></td>
		<td><a href="GroupingContent/figure.cfm">Example</a></td>
		<td>some flow content</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/font">font</a></td>
		<td>&nbsp;</td>
		<td>CSS</td>
	</tr>
	<tr>
		<td>Sections</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/footer">footer</a></td>
		<td><a href="Sections/Footer.cfm">Example</a></td>
		<td>a footer for its nearest ancestor sectioning content or sectioning root element</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/label">for</a></td>
		<td><a href="LocalAttribute/for.cfm">Example</a></td>
		<td>a form control with which the label is to be associated.</td>
	</tr>
	<tr>
		<td>Forms</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/form">form</a></td>
		<td>a user-submittable form</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>form</td>
		<td>Associate the  element with its form owner.</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/button">button</a>, <a href="http://www.w3.org/wiki/HTML/Elements/fieldset">fieldset</a>, <a href="http://www.w3.org/wiki/HTML/Elements/label">label</a>, <a href="http://www.w3.org/wiki/HTML/Elements/meter">meter</a>, <a href="http://www.w3.org/wiki/HTML/Elements/object">object</a>, <a href="http://www.w3.org/wiki/HTML/Elements/progress">progress</a>, <a href="http://www.w3.org/wiki/HTML/Elements/select">select</a>, <a href="http://www.w3.org/wiki/HTML/Elements/textarea">textarea</a></td>
	</tr>
	<tr>
		<td>Input Attribute</td>
		<td>Inter</td>
		<td>formaction</td>
		<td>&nbsp;</td>
		<td>Submit button, Image button</td>
	</tr>
	<tr>
		<td>Input Attribute</td>
		<td>Inter</td>
		<td>formenctype</td>
		<td>&nbsp;</td>
		<td>Submit button, Image button</td>
	</tr>
	<tr>
		<td>Input Attribute</td>
		<td>Inter</td>
		<td>formmethod</td>
		<td>&nbsp;</td>
		<td>Submit button, Image button</td>
	</tr>
	<tr>
		<td>Input Attribute</td>
		<td>Inter</td>
		<td>formnovalidate</td>
		<td>&nbsp;</td>
		<td>Submit button, Image button</td>
	</tr>
	<tr>
		<td>Input Attribute</td>
		<td>Inter</td>
		<td>formtarget</td>
		<td>&nbsp;</td>
		<td>Submit button, Image button</td>
	</tr>
	<tr>
		<td>Embedded content</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/frame">frame</a></td>
		<td>&nbsp;</td>
		<td>No</td>
	</tr>
	<tr>
		<td>Embedded content</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/frameset">frameset</a></td>
		<td>&nbsp;</td>
		<td>No</td>
	</tr>
	<tr id="h">
		<td>Sections</td>
		<td>Intro</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/h1,_h2,_h3,_h4,_h5,_and_h6">h1</a></td>
		<td><a href="Sections/h1-6.cfm">Example</a></td>
		<td>headings for their sections.</td>
	</tr>
	<tr>
		<td>Sections</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/h1,_h2,_h3,_h4,_h5,_and_h6">h2</a></td>
		<td><a href="Sections/h1-6.cfm">Example</a></td>
		<td>headings for their sections.</td>
	</tr>
	<tr>
		<td>Sections</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/h1,_h2,_h3,_h4,_h5,_and_h6">h3</a></td>
		<td><a href="Sections/h1-6.cfm">Example</a></td>
		<td>headings for their sections.</td>
	</tr>
	<tr>
		<td>Sections</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/h1,_h2,_h3,_h4,_h5,_and_h6">h4</a></td>
		<td><a href="Sections/h1-6.cfm">Example</a></td>
		<td>headings for their sections.</td>
	</tr>
	<tr>
		<td>Sections</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/h1,_h2,_h3,_h4,_h5,_and_h6">h5</a></td>
		<td><a href="Sections/h1-6.cfm">Example</a></td>
		<td>headings for their sections.</td>
	</tr>
	<tr>
		<td>Sections</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/h1,_h2,_h3,_h4,_h5,_and_h6">h6</a></td>
		<td><a href="Sections/h1-6.cfm">Example</a></td>
		<td>headings for their sections.</td>
	</tr>
	<tr>
		<td>Document metadata</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/head">head</a></td>
		<td><a href="DocumentMetadata/head.cfm">Example</a></td>
		<td>a collection of metadata for the Document.</td>
	</tr>
	<tr>
		<td>Sections</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/header">header</a></td>
		<td><a href="Sections/header.cfm">Example</a></td>
		<td>a group of introductory or navigational aids</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>headers</td>
		<td>the value of an id Attribute of the th element that is targeted</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/td">td</a>, <a href="http://www.w3.org/wiki/HTML/Elements/th">th</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>height</td>
		<td>&nbsp;</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/canvas">canvas</a>, <a href="http://www.w3.org/wiki/HTML/Elements/iframe">iframe</a>, <a href="http://www.w3.org/wiki/HTML/Elements/img">img</a>, <a href="http://www.w3.org/wiki/HTML/Elements/object">object</a>, <a href="http://www.w3.org/wiki/HTML/Elements/video">video</a></td>
	</tr>
	<tr>
		<td>Input Attribute</td>
		<td>Inter</td>
		<td>height</td>
		<td>&nbsp;</td>
		<td>Imae button</td>
	</tr>
	<tr>
		<td>Global Attribute</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/TR/html5/author/editing.html#the-hidden-attribute">hidden</a></td>
		<td><a href="Attributes/Global/Hidden.cfm">Example</a></td>
		<td>Supported by all  elements</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>high</td>
		<td>The range that is considered to be the &quot;high&quot; part.</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/meter">meter</a></td>
	</tr>
	<tr>
		<td>Sections</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/hgroup">hgroup</a></td>
		<td>the heading of a section.</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Grouping content</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/hr">hr</a></td>
		<td><a href="GroupingContent/hr.cfm">Example</a></td>
		<td>Horizontal Rule. A paragraph-level thematic break</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html40/struct/links.html#adef-href">href</a></td>
		<td>&nbsp;</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/a">a</a>, <a href="http://www.w3.org/wiki/HTML/Elements/area">area</a>, <a href="http://www.w3.org/wiki/HTML/Elements/base">base</a>, <a href="http://www.w3.org/wiki/HTML/Elements/link">link</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/TR/html5/author/links.html#attr-hyperlink-hreflang">hreflang</a></td>
		<td>the language of the linked resource. Must be a valid BCP 47 language tag</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/a">a</a>, <a href="http://www.w3.org/TR/html5/author/the-area-element.html#the-area-element">area</a>, <a href="http://www.w3.org/wiki/HTML/Elements/link">link</a></td>
	</tr>
	<tr>
		<td>root</td>
		<td>Intro</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/html">html</a></td>
		<td><a href="root/html.cfm">Example</a></td>
		<td>the root of the document.</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>http-equiv </td>
		<td>Values: content-language, content-type, default-style, refresh</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/meta">meta</a></td>
	</tr>
	<tr id="i">
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/i">i</a></td>
		<td>text that offset from the normal prose</td>
		<td>CSS</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>icon</td>
		<td>a picture that represents the command. </td>
		<td><a href="Gives the name of the command, as shown to the user">command</a></td>
	</tr>
	<tr>
		<td>Global Attribute</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/TR/html5/author/global-attributes.html#the-id-attribute">id</a></td>
		<td><a href="GlobalAttributes/id.cfm">Example</a></td>
		<td>A unique identifier  in this document</td>
	</tr>
	<tr>
		<td>Embedded content</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/iframe">iframe</a></td>
		<td>nested browsing context.</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Embedded content</td>
		<td>Intro</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/img">img</a></td>
		<td><a href="EmbeddedContent/img.cfm">Example</a></td>
		<td>image</td>
	</tr>
	<tr>
		<td>Forms</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/input">input</a></td>
		<td>a typed data field, usually with a form control to allow the user to edit the data.</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Edits</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/ins">ins</a></td>
		<td>an addition to the document</td>
		<td>CSS</td>
	</tr>
	<tr>
		<td>Document metadata</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/isindex">isIndex</a></td>
		<td>&nbsp;</td>
		<td>No</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>ismap</td>
		<td>a server-side image map. </td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/img">img</a></td>
	</tr>
	<tr id="k">
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/kbd">kbd</a></td>
		<td>user input</td>
		<td>No</td>
	</tr>
	<tr>
		<td>Forms</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/keygen">keygen</a></td>
		<td><a href="Forms/KeyGen.cfm">Example</a></td>
		<td>a key pair generator control.</td>
	</tr>
	<tr id="l">
		<td>Forms</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/label">label</a></td>
		<td>a caption in a user interface.</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>label</td>
		<td>Gives the name of the command, as shown to the user</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/command">command</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>label</td>
		<td>&nbsp;</td>
		<td><a href="context/ toolbar/ list">menu</a>, <a href="http://www.w3.org/wiki/HTML/Elements/option">option</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>label</td>
		<td>the name of the group</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/optgroup">optgroup</a></td>
	</tr>
	<tr>
		<td>Global Attribute</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/TR/html5/author/global-attributes.html#attr-lang">lang</a></td>
		<td>A valid language tag, as defined in [BCP47]</td>
		<td>Supported by all  elements</td>
	</tr>
	<tr>
		<td>Forms</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/legend">legend</a></td>
		<td><a href="Forms/Fieldset.cfm">Example</a></td>
		<td>a caption for the rest of the contents of the legend element's parent fieldset element.</td>
	</tr>
	<tr>
		<td>Grouping content</td>
		<td>Intro</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/li">li</a></td>
		<td><a href="GroupingContent/li.cfm">Example</a></td>
		<td>List Item</td>
	</tr>
	<tr>
		<td>Document metadata</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/link">link</a></td>
		<td>link their document to other resources.</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Input Attribute</td>
		<td>Inter</td>
		<td>list</td>
		<td>&nbsp;</td>
		<td>text, search, url, telephone, e-mail,  date and time, date, month, week, time, local date and time, number, range, color</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/listing">listing</a></td>
		<td>&nbsp;</td>
		<td>No</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>loop</td>
		<td>Seek back to the start upon reaching the end</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/video">video</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>low</td>
		<td>the range that is considered to be the &quot;low&quot; part. </td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/meter">meter</a></td>
	</tr>
	<tr id="m">
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>manifest</td>
		<td> caching of content for offline use</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/html">html</a></td>
	</tr>
	<tr>
		<td>Embedded content</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/map">map</a></td>
		<td><a href="EmbeddedContent/map.cfm">Example</a></td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Embedded content</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/math">math</a></td>
		<td>the root of a <a href="http://www.w3.org/TR/MathML3/chapter2.html#interf.toplevel">MathML</a> fragment.</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/mark">mark</a></td>
		<td><a href="TextLevelSemantics/Mark.cfm">Example</a></td>
		<td>CSS</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/marquee">marquee</a></td>
		<td>&nbsp;</td>
		<td>JavaScript</td>
	</tr>
	<tr>
		<td>Input Attribute</td>
		<td>Inter</td>
		<td>max</td>
		<td>&nbsp;</td>
		<td> date and time, date, month, week, time, local date and time, number, range</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>max</td>
		<td>The upper bound</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/meter">meter</a>, <a href="http://www.w3.org/wiki/HTML/Elements/progress">progress</a></td>
	</tr>
	<tr>
		<td>Input Attribute</td>
		<td>Inter</td>
		<td>maxlength</td>
		<td>&nbsp;</td>
		<td>text, search, url, telephone, e-mail, password</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/TR/html5/author/links.html#attr-hyperlink-media">media</a></td>
		<td> A valid media query list, as defined in [<a href="http://dev.w3.org/csswg/css3-mediaqueries/">MediaQueries</a>]</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/a">a</a>, <a href="http://www.w3.org/wiki/HTML/Elements/area">area</a>, <a href="http://www.w3.org/wiki/HTML/Elements/link">link</a>, <a href="http://www.w3.org/wiki/HTML/Elements/source">Source</a>, <a href="http://www.w3.org/wiki/HTML/Elements/style">Style</a></td>
	</tr>
	<tr>
		<td>Interactive</td>
		<td><a href="http://www.caniuse.com/#search=menu">Future</a></td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/menu">menu</a></td>
		<td>a list of commands.</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Document metadata</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/meta">meta</a></td>
		<td>metadata that cannot be expressed using the title, base, link, style, and script elements.</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Forms</td>
		<td>Future</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/meter">meter</a></td>
		<td>a scalar measurement within a known range, or a fractional value.</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>method</td>
		<td>Values: get, post</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/form">form</a></td>
	</tr>
	<tr>
		<td>Input Attribute</td>
		<td>Inter</td>
		<td>min</td>
		<td>&nbsp;</td>
		<td>date and time, date, month, week, time, local date and time, number, range</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>min</td>
		<td> the lower bound of the range. </td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/meter">meter</a></td>
	</tr>
	<tr>
		<td>Input Attribute</td>
		<td>Inter</td>
		<td>multiple</td>
		<td>&nbsp;</td>
		<td>e-mail, file upload</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>multiple</td>
		<td> options from the list of options</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/select">select</a></td>
	</tr>
	<tr id="n">
		<td>Local Attribute</td>
		<td>Past</td>
		<td>name</td>
		<td>&lt;a name=&quot;X&quot;&gt;</td>
		<td>&lt;p id=&quot;X&quot;&gt;&lt;/p&gt;</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>name</td>
		<td>The name of the element as it is  submitted</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/button">button</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>name</td>
		<td>The name of the element</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/fieldset">fieldset</a>, <a href="http://www.w3.org/wiki/HTML/Elements/form">form</a>, <a href="http://www.w3.org/wiki/HTML/Elements/map">map</a>, <a href="http://www.w3.org/wiki/HTML/Elements/object">object</a>, <a href="http://www.w3.org/wiki/HTML/Elements/param">param</a>, <a href="http://www.w3.org/wiki/HTML/Elements/select">select</a>, <a href="http://www.w3.org/wiki/HTML/Elements/textarea">textarea</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>name</td>
		<td>the browsing-context name</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/iframe">iframe</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>name</td>
		<td>application-name, author, description, generator, keywords</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/meta">meta</a></td>
	</tr>
	<tr>
		<td>Sections</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/nav">nav</a></td>
		<td><a href="Sections/Nav.cfm">Example</a></td>
		<td>a section with navigation links.</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/nextid">nextid</a></td>
		<td>&nbsp;</td>
		<td>No</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/nobr">nobr</a></td>
		<td>&nbsp;</td>
		<td>No</td>
	</tr>
	<tr>
		<td>Embedded content</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/noembed">noembed</a></td>
		<td>&nbsp;</td>
		<td>No</td>
	</tr>
	<tr>
		<td>Embedded content</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/noframes">noframes</a></td>
		<td>&nbsp;</td>
		<td>No</td>
	</tr>
	<tr>
		<td>Scripting</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/noscript">noscript</a></td>
		<td>Displays if scripting is disabled.</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>novalidate</td>
		<td>the form is not to be validated during submission. </td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/form">form</a></td>
	</tr>
	<tr id="o">
		<td>Embedded content</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/object">object</a></td>
		<td>an image  or a plugin</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Grouping content</td>
		<td>Intro</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/ol">ol</a></td>
		<td><a href="GroupingContent/ol.cfm">Example</a></td>
		<td>Ordered List</td>
	</tr>
	<tr>
		<td>Media Event</td>
		<td>Future</td>
		<td>onabort</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Window Event</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/body">onafterprint</a></td>
		<td><a href="WindowEvent/onafterprint.cfm">Example</a></td>
		<td><a href="http://msdn.microsoft.com/en-us/library/ms536788%28v=vs.85%29.aspx">IE only</a></td>
	</tr>
	<tr>
		<td>Window Event</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/body">onbeforeprint</a></td>
		<td><a href="WindowEvent/onbeforeprint.cfm">Example</a></td>
		<td><a href="http://msdn.microsoft.com/en-us/library/ms536906%28v=vs.85%29.aspx">IE only</a></td>
	</tr>
	<tr>
		<td>Window Event</td>
		<td>Future</td>
		<td>onbeforeunload</td>
		<td><a href="WindowEvent/onbeforeunload.cfm">Example</a></td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/body">body</a></td>
	</tr>
	<tr>
		<td>Window Event</td>
		<td>Past</td>
		<td>onblur</td>
		<td>window lost focus. </td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Form Event</td>
		<td>Past</td>
		<td>onblur</td>
		<td>element lost focus</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Media Event</td>
		<td>Future</td>
		<td>oncanplay</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Media Event</td>
		<td>Future</td>
		<td>oncanplaythrough</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Form Event</td>
		<td>Past</td>
		<td>onchange</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Mouse Event</td>
		<td>Past</td>
		<td>onclick</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Form Event</td>
		<td>Future</td>
		<td>oncontextmenu</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Mouse Event</td>
		<td>Past</td>
		<td>ondblclick</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Mouse Event</td>
		<td>Future</td>
		<td>ondrag</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Mouse Event</td>
		<td>Future</td>
		<td>ondragend</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Mouse Event</td>
		<td>Future</td>
		<td>ondragenter</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Mouse Event</td>
		<td>Future</td>
		<td>ondragleave</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Mouse Event</td>
		<td>Future</td>
		<td>ondragover</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Mouse Event</td>
		<td>Future</td>
		<td>ondragstart</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Mouse Event</td>
		<td>Future</td>
		<td>ondrop</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Media Event</td>
		<td>Future</td>
		<td>ondurationchange</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Media Event</td>
		<td>Future</td>
		<td>onemptied</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Media Event</td>
		<td>Future</td>
		<td>onended</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Window Event</td>
		<td>Future</td>
		<td>onerror</td>
		<td> failure to load properly. </td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Media Event</td>
		<td>Future</td>
		<td>onerror</td>
		<td>failure to load properly</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Window Event</td>
		<td>Past</td>
		<td>onfocus</td>
		<td> received focus. </td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Form Event</td>
		<td>Past</td>
		<td>onfocus</td>
		<td>received focus</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Form Event</td>
		<td>Future</td>
		<td>onformchange</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Form Event</td>
		<td>Future</td>
		<td>onforminput</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Window Event</td>
		<td>Future</td>
		<td>onhaschange</td>
		<td>Fragment identifier part of the document’s current address changed. </td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/body">body</a></td>
	</tr>
	<tr>
		<td>Form Event</td>
		<td>Future</td>
		<td>oninput</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Form Event</td>
		<td>Future</td>
		<td>oninvalid</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Keyboard Event</td>
		<td>Past</td>
		<td>onkeydown</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Keyboard Event</td>
		<td>Past</td>
		<td>onkeypress</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Keyboard Event</td>
		<td>Past</td>
		<td>onkeyup</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Window Event</td>
		<td>Past</td>
		<td>onload</td>
		<td>element finished loading. </td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Media Event</td>
		<td>Future</td>
		<td>onloadeddata</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Media Event</td>
		<td>Future</td>
		<td>onloadedmetadata</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Media Event</td>
		<td>Future</td>
		<td>onloadstart</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Window Event</td>
		<td>Future</td>
		<td>onmessage</td>
		<td>Document received a message. </td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/body">body</a></td>
	</tr>
	<tr>
		<td>Mouse Event</td>
		<td>Past</td>
		<td>onmousedown</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Mouse Event</td>
		<td>Past</td>
		<td>onmousemove</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Mouse Event</td>
		<td>Past</td>
		<td>onmouseout</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Mouse Event</td>
		<td>Past</td>
		<td>onmouseover</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Mouse Event</td>
		<td>Past</td>
		<td>onmouseup</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Mouse Event</td>
		<td>Future</td>
		<td>onmousewheel</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Window Event</td>
		<td>Future</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/body">onoffline</a></td>
		<td>Network connections failed. </td>
		<td>Use navigator.onLine with setInterval</td>
	</tr>
	<tr>
		<td>Window Event</td>
		<td>Future</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/body">ononline</a></td>
		<td>Network connections returned. </td>
		<td>Use navigator.onLine with setInterval</td>
	</tr>
	<tr>
		<td>Window Event</td>
		<td>Future</td>
		<td><a href="http://www.w3schools.com/html5/html5_ref_eventattributes.asp">onpagehide</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Window Event</td>
		<td>Future</td>
		<td><a href="http://www.w3schools.com/html5/html5_ref_eventattributes.asp">onpageshow</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Media Event</td>
		<td>Future</td>
		<td>onpause</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Media Event</td>
		<td>Future</td>
		<td>onplay</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Media Event</td>
		<td>Future</td>
		<td>onplaying</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Window Event</td>
		<td>Future</td>
		<td>onpopstate</td>
		<td>User navigated session history. </td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/body">body</a></td>
	</tr>
	<tr>
		<td>Media Event</td>
		<td>Future</td>
		<td>onprogress</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Media Event</td>
		<td>Future</td>
		<td>onratechange</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Media Event</td>
		<td>Future</td>
		<td>onreadystatechange</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Window Event</td>
		<td>Future</td>
		<td>onredo</td>
		<td>User went forward in undo transaction history. </td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/body">body</a></td>
	</tr>
	<tr>
		<td>Window Event</td>
		<td>Future</td>
		<td>onresize</td>
		<td>Document view was resized. </td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/body">body</a></td>
	</tr>
	<tr>
		<td>Mouse Event</td>
		<td>Future</td>
		<td>onscroll</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Media Event</td>
		<td>Future</td>
		<td>onseeked</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Media Event</td>
		<td>Future</td>
		<td>onseeking</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Form Event</td>
		<td>Past</td>
		<td>onselect</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Form Event</td>
		<td>Past</td>
		<td>onshow</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Media Event</td>
		<td>Future</td>
		<td>onstalled</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Window Event</td>
		<td>Future</td>
		<td>onstorage</td>
		<td>Storage area changed. </td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/body">body</a></td>
	</tr>
	<tr>
		<td>Form Event</td>
		<td>Past</td>
		<td>onsubmit</td>
		<td>&nbsp;</td>
		<td>jQuery</td>
	</tr>
	<tr>
		<td>Media Event</td>
		<td>Future</td>
		<td>onsuspend</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Media Event</td>
		<td>Future</td>
		<td>ontimeupdate</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Window Event</td>
		<td>Future</td>
		<td>onundo</td>
		<td>User went backward in undo transaction history. </td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/body">body</a></td>
	</tr>
	<tr>
		<td>Window Event</td>
		<td>Future</td>
		<td>onunload</td>
		<td>Document is going away. </td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/body">body</a></td>
	</tr>
	<tr>
		<td>Media Event</td>
		<td>Future</td>
		<td>onvolumechange</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Media Event</td>
		<td>Future</td>
		<td>onwaiting</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>open</td>
		<td>the details are to be shown to the user.</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/details">details</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>optimum </td>
		<td>Gives the position that is &quot;optimum&quot;</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/meter">meter</a></td>
	</tr>
	<tr>
		<td>Forms</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/optgroup">optgroup</a></td>
		<td>a group of option elements with a common label.</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Forms</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/option">option</a></td>
		<td>an option in a select element or as part of a list of suggestions in a datalist element.</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Forms</td>
		<td>Future</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/output">output</a></td>
		<td><a href="Forms/Output.cfm">Example</a></td>
		<td>I'm not sure what the example is showing me.</td>
	</tr>
	<tr id="p">
		<td>Grouping content</td>
		<td>Intro</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/p">p</a></td>
		<td><a href="GroupingContent/p.cfm">Example</a></td>
		<td>A paragraph</td>
	</tr>
	<tr>
		<td>Embedded content</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/param">param</a></td>
		<td>parameters for plugins invoked by object elements</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Input Attribute</td>
		<td>Inter</td>
		<td>pattern</td>
		<td>&nbsp;</td>
		<td>type=text, search, url, telephone, e-mail, password</td>
	</tr>
	<tr>
		<td>Input Attribute</td>
		<td><a href="http://www.caniuse.com/#search=placeholder">Future</a></td>
		<td>placeholder</td>
		<td><a href="InputAttribute/placeholder.cfm">Example</a></td>
		<td>type=text, search, url, telephone, e-mail, password</td>
	</tr>
	
	<tr>
		<td>Local Attribute</td>
		<td><a href="http://www.caniuse.com/#search=placeholder">Future</a></td>
		<td>placeholder</td>
		<td>&nbsp;</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/textarea">textarea</a></td>
	</tr>
	<tr>
		<td>Embedded content</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/plaintext">plaintext</a></td>
		<td>&nbsp;</td>
		<td>No</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>poster</td>
		<td>url of an image</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/video">video</a></td>
	</tr>
	<tr>
		<td>Grouping content</td>
		<td>Intro</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/pre">pre</a></td>
		<td><a href="GroupingContent/pre.cfm">Example</a></td>
		<td>a block of preformatted text</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>preload </td>
		<td>Values: none, metadata, auto</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/video">video</a></td>
	</tr>
	<tr>
		<td>Forms</td>
		<td>Future</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/progress">progress</a></td>
		<td>the completion progress of a task.</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>pubdate</td>
		<td>publication date</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/time">time</a></td>
	</tr>
	<tr id="q">
		<td>Text-level semantics</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/q">q</a></td>
		<td><a href="TextLevelSemantics/q.cfm">Example</a></td>
		<td>some phrasing content quoted from another source</td>
	</tr>
	<tr id="r">
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>radiogroup</td>
		<td>the name of the group of commands that will be toggled</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/command">command</a></td>
	</tr>
	<tr>
		<td>Input Attribute</td>
		<td>Inter</td>
		<td>readonly</td>
		<td>&nbsp;</td>
		<td>type=text, search, url, telephone, e-mail, password, date and time, date, month, week, time, local date and time, </td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>readonly</td>
		<td><a href="LocalAttribute/ReadOnlyTextArea.cfm">Example</a></td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/textarea">textarea</a></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td><a href="Meta/Refresh.cfm">refresh</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/TR/html5/author/links.html#attr-hyperlink-rel">rel</a></td>
		<td> the relationship between the document  and the destination. </td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/a">a</a>, <a href="http://www.w3.org/wiki/HTML/Elements/area">area</a>, link</td>
	</tr>
	<tr>
		<td>Input Attribute</td>
		<td>Inter</td>
		<td>required</td>
		<td>&nbsp;</td>
		<td>type=text, search, url, telephone, e-mail, password, date and time, date, month, week, time, local date and time, number, checkbox, radio button, File Upload</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>required</td>
		<td>required to select a value</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/select">select</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>required</td>
		<td>&nbsp;</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/textarea">textarea</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Future</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/ol">reversed</a></td>
		<td><a href="LocalAttribute/Reversed.cfm">Example</a></td>
		<td>Changes into the descending order list</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>rows</td>
		<td><a href="Forms/TextArea.cfm">Example</a></td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/textarea">textarea</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>rowspan</td>
		<td><a href="Tables/Table.cfm">Example</a></td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/td">td</a>, <a href="http://www.w3.org/wiki/HTML/Elements/th">th</a></td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/rp">rp</a></td>
		<td>ruby parentheses around the text  of a ruby annotation</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/rt">rt</a></td>
		<td>ruby text  annotation for the nodes that immediately precedes</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/ruby">ruby</a></td>
		<td>short runs of text used in East Asian typography</td>
		<td>&nbsp;</td>
	</tr>
	<tr id="s">
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/s">s</a></td>
		<td>contents that are no longer accurate or no longer relevant</td>
		<td>CSS</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/samp">samp</a></td>
		<td>output from a program or computing system.</td>
		<td>CSS</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>sandbox</td>
		<td>Values: allow-same-origin, allow-top-navigation, allow-forms, allow-scripts</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/iframe">iframe</a></td>
	</tr>
	<tr>
		<td>Scripting</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/script">script</a></td>
		<td>include dynamic script and data blocks in their documents.</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>scope</td>
		<td>Values: row, col, rowgroup, colgroup</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/th">th</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>scoped</td>
		<td>apply only to the parent element, and that element’s child nodes</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/style">style</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>seamless </td>
		<td>seamlessly included in the parent document</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/iframe">iframe</a></td>
	</tr>
	<tr>
		<td>Sections</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/section">section</a></td>
		<td>a generic section of a document or application.</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Forms</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/select">select</a></td>
		<td>a control for selecting amongst a set of options.</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>selected</td>
		<td>the default selectedness of the element</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/object">object</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Begin</td>
		<td>shape</td>
		<td>circle, <a href="LocalAttribute/shapePoly.cfm">poly</a>, <a href="LocalAttribute/shapePoly.cfm">rect</a>, default</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/area">area</a></td>
	</tr>
	<tr>
		<td>Input Attribute</td>
		<td>Inter</td>
		<td>size</td>
		<td>&nbsp;</td>
		<td>text, search, url, telephone, e-mail, password</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>size</td>
		<td>the number of options to show to the user</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/select">select</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>sizes</td>
		<td>used with the icon link type</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/link">link</a></td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/small">small</a></td>
		<td>side comments such as small print</td>
		<td>CSS</td>
	</tr>
	<tr>
		<td>Embedded content</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/source">source</a></td>
		<td>multiple  media resources</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/spacer">spacer</a></td>
		<td>&nbsp;</td>
		<td>No</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/span">span</a></td>
		<td>inline div</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>span</td>
		<td>one or more columns in a colgroup</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/col">col</a>, <a href="http://www.w3.org/wiki/HTML/Elements/colgroup">colgroup</a></td>
	</tr>
	<tr>
		<td>Global Attribute</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/TR/html5/author/editing.html#attr-spellcheck">spellcheck</a></td>
		<td><a href="GlobalAttributes/Spellcheck.cfm">Example</a></td>
		<td>contents are subject to spell  and grammar checking. </td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Begin</td>
		<td>src</td>
		<td><a href="LocalAttribute/src.cfm">Example</a></td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/img">img</a>, <a href="http://www.w3.org/wiki/HTML/Elements/video">video</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>src</td>
		<td> the address of a page that the nested browsing context is to contain. </td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/iframe">iframe</a>, <a href="http://www.w3.org/wiki/HTML/Elements/source">Source</a></td>
	</tr>
	<tr>
		<td>Input Attribute</td>
		<td>Inter</td>
		<td>src</td>
		<td>url</td>
		<td>Image button</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>src</td>
		<td>URL of the  script </td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/script">script</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>srcdoc</td>
		<td> the content of the page that the nested browsing context is to contain. </td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/iframe">iframe</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Begin</td>
		<td>start</td>
		<td><a href="LocalAttribute/start.cfm">Example</a></td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/ol">ol</a></td>
	</tr>
	<tr>
		<td>Input Attribute</td>
		<td>Inter</td>
		<td>step</td>
		<td>&nbsp;</td>
		<td>date and time, date, month, week, time, local date and time, number, Range</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/strike">strike</a></td>
		<td>strike out</td>
		<td>CSS</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Intro</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/strong">strong</a></td>
		<td><a href="TextLevelSemantics/strong.cfm">Example</a></td>
		<td>strong importance for its contents</td>
	</tr>
	<tr>
		<td>Document metadata</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/style">style</a></td>
		<td>embed style information in a document.</td>
		<td>Supported by all  elements</td>
	</tr>
	<tr>
		<td>Global Attribute</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/TR/html5/author/global-attributes.html#the-style-attribute">style</a></td>
		<td>CSS declarations</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/sub">sub</a></td>
		<td>subscript</td>
		<td>CSS</td>
	</tr>
	<tr>
		<td>Interactive</td>
		<td><a href="http://www.caniuse.com/#search=summary">Future</a></td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/summary">summary</a></td>
		<td><a href="Interactive/Details.cfm">Example</a></td>
		<td>a summary, caption, or legend for the rest of the contents</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>summary</td>
		<td><a href="LocalAttribute/summary.cfm">Example</a></td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/table">table</a></td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/sup">sup</a></td>
		<td><a href="TextLevelSemantics/sup.cfm">Example</a></td>
		<td>CSS</td>
	</tr>
	<tr>
		<td>Embedded content</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/svg">svg</a></td>
		<td>the root of a Scalable Vector Graphics (<a href="http://www.w3.org/TR/2010/WD-html5-20100624/the-map-element.html#svg-0">SVG</a>) fragment.</td>
		<td>&nbsp;</td>
	</tr>
	<tr id="t">
		<td>Global Attribute</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/TR/html5/author/editing.html#attr-tabindex">tabindex</a></td>
		<td><a href="GlobalAttributes/TabIndex.cfm">Example</a></td>
		<td>the  order in the sequence of focusable elements</td>
	</tr>
	<tr>
		<td>Tables</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/table">table</a></td>
		<td><a href="Tables/Table.cfm">Example</a></td>
		<td>data with more than one dimension</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/TR/html5/author/links.html#attr-hyperlink-target">target</a></td>
		<td>_blank, _self, _parent, or _top</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/a">a</a>, <a href="http://www.w3.org/wiki/HTML/Elements/area">area</a>, <a href="http://www.w3.org/wiki/HTML/Elements/base">base</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>target</td>
		<td>a browsing context name or keyword that represents the target of the control. </td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/form">form</a></td>
	</tr>
	<tr>
		<td>Tables</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/tbody">tbody</a></td>
		<td><a href="Tables/Table.cfm">Example</a></td>
		<td>Rows that consist of a body of data</td>
	</tr>
	<tr>
		<td>Tables</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/td">td</a></td>
		<td><a href="Tables/Table.cfm">Example</a></td>
		<td>a data cell in a table.</td>
	</tr>
	<tr>
		<td>Forms</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/textarea">textarea</a></td>
		<td><a href="Forms/TextArea.cfm">Example</a></td>
		<td>a multiline plain text edit control for the element's raw value.</td>
	</tr>
	<tr>
		<td>Tables</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/tfoot">tfoot</a></td>
		<td><a href="Tables/Table.cfm">Example</a></td>
		<td>Rows of column summaries (footers)</td>
	</tr>
	<tr>
		<td>Tables</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/th">th</a></td>
		<td><a href="Tables/Table.cfm">Example</a></td>
		<td>a header cell in a table</td>
	</tr>
	<tr>
		<td>Tables</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/thead">thead</a></td>
		<td><a href="Tables/Table.cfm">Example</a></td>
		<td>Rows of column labels (headers)</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Future</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/time">time</a></td>
		<td>A time on a 24 hour clock, or a precise date in the calendar, optionally with a time and a time-zone offset</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Document metadata</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/title">title</a></td>
		<td>the document's title or name</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Global Attribute</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/TR/html5/author/global-attributes.html#the-title-attribute">title</a></td>
		<td><a href="GlobalAttributes/title.cfm">Example</a></td>
		<td>Advisory information</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>title</td>
		<td> alternative style sheet sets</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/link">link</a>, <a href="http://www.w3.org/wiki/HTML/Elements/style">style</a></td>
	</tr>
	<tr>
		<td>Tables</td>
		<td>Begin</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/tr">tr</a></td>
		<td><a href="Tables/Table.cfm">Example</a></td>
		<td>a row of cells in a table</td>
	</tr>
	<tr>
		<td>Embedded content</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/track">track</a></td>
		<td>external timed tracks for media elements</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/tt">tt</a></td>
		<td>&nbsp;</td>
		<td>CSS</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td><a href="http://www.w3.org/TR/html5/author/links.html#attr-hyperlink-type">type</a></td>
		<td><a href="http://www.w3.org/TR/html5/author/infrastructure.html#mime-type">MIME type</a></td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/a">a</a>, <a href="http://www.w3.org/wiki/HTML/Elements/area">area</a>, <a href="http://www.w3.org/wiki/HTML/Elements/link">link</a>, <a href="http://www.w3.org/wiki/HTML/Elements/object">object</a>, <a href="http://www.w3.org/wiki/HTML/Elements/source">source</a>, <a href="http://www.w3.org/wiki/HTML/Elements/style">style</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>type</td>
		<td>Values: submit, reset, or button</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/button">button</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>type</td>
		<td>Values: command, checkbox, radio</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/command">command</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>type</td>
		<td>Values: context, toolbar, list</td>
		<td><a href="context/ toolbar/ list">menu</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Begin</td>
		<td>type</td>
		<td>&nbsp;</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/ol">ol</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>type</td>
		<td>the language of the script or format of the data</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/script">script</a></td>
	</tr>
	<tr id="u">
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/u">u</a></td>
		<td>Underline</td>
		<td>CSS</td>
	</tr>
	<tr>
		<td>Grouping content</td>
		<td>Intro</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/ul">ul</a></td>
		<td><a href="GroupingContent/ul.cfm">Example</a></td>
		<td>Unordered List</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>usemap</td>
		<td>a hash-name reference to a map element with which to associate the object. </td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/img">img</a>, <a href="http://www.w3.org/wiki/HTML/Elements/object">object</a></td>
	</tr>
	<tr id="v">
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>value</td>
		<td>Gives the element's value for the purposes of form submission. </td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/button">button</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Begin</td>
		<td>value</td>
		<td><a href="LocalAttribute/Value.cfm">Example</a></td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/li">li</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>value</td>
		<td>the &quot;measured&quot; value</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/meter">meter</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>value</td>
		<td>The value of the option</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/option">option</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>value</td>
		<td>the value of the parameter.</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/param">param</a></td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>value</td>
		<td>how much of the task has been completed.</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/progress">progress</a></td>
	</tr>
	<tr>
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/var">var</a></td>
		<td>a variable</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Embedded content</td>
		<td>Adv</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/video">video</a></td>
		<td>used for playing videos</td>
		<td>&nbsp;</td>
	</tr>
	<tr id="w">
		<td>Text-level semantics</td>
		<td><a href="http://www.quirksmode.org/oddsandends/wbr.html">Future</a></td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/wbr">wbr</a></td>
		<td>line break opportunity</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Adv</td>
		<td>width</td>
		<td>&nbsp;</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/canvas">canvas</a>, <a href="http://www.w3.org/wiki/HTML/Elements/iframe">iframe</a>, <a href="http://www.w3.org/wiki/HTML/Elements/img">img</a>, <a href="http://www.w3.org/wiki/HTML/Elements/object">object</a>, <a href="http://www.w3.org/wiki/HTML/Elements/video">video</a></td>
	</tr>
	<tr>
		<td>Input Attribute</td>
		<td>Inter</td>
		<td>width</td>
		<td>&nbsp;</td>
		<td>Image button</td>
	</tr>
	<tr>
		<td>Local Attribute</td>
		<td>Inter</td>
		<td>wrap</td>
		<td>Values: soft, hard</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/textarea">textarea</a></td>
	</tr>
	<tr id="x">
		<td>Text-level semantics</td>
		<td>Past</td>
		<td><a href="http://www.w3.org/wiki/HTML/Elements/xmp">xmp</a></td>
		<td>&nbsp;</td>
		<td>CSS</td>
	</tr>
	</tbody>
</table>
<cfinclude template="/Library/Inc/foot.cfm">
<cfinclude template="/Library/Inc/End.cfm">
