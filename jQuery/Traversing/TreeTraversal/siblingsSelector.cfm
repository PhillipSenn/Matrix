<cfinclude template="/Inc/html.cfm">
<link rel="stylesheet" type="text/css" href="SiblingsSelector.css">
<cfinclude template="/Inc/body.cfm">
<p>Notice that siblings don't have to be the same type of element.</p>
<p>Paragraphs are siblings of anchor tags because they have the same parent element.</p>
<p>Paragraph Three</p>
<a href="#">Anchor One</a>
<a href="#">Anchor Two</a>
<a href="#">Anchor Three</a>
<ul>
	<li>List Element One
	<ol>
		<li>Why do the unordered list items highlight when I click on of the orderd list items?</li>
		<li>It's because the ordered list is contained within an unordered list item.</li>
		<li>The ordered list item is clicked first, but then the event bubbles up to the unordered list</li>
	</ol>
	</li>
	<li>List Element Two</li>
	<li>List Element Three</li>
</ul>
<cfinclude template="/Inc/foot.cfm">
<!---
<script src="SiblingsSelector.js"></script>
--->
<cfinclude template="/Inc/End.cfm">
