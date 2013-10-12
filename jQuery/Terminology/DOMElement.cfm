<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>DOM Element</h1>
<p>Old school programmers would think that you could manipulate HTML as if it were one long string.
	<cfinclude template="/Library/html/foot.cfm">
	<cfinclude template="/Inc/End.cfm">
	You could cut out parts of the string, and concatenate others.</p>
<p>But those programmers would be wrong.</p>
<p>The browsers read in the text and put the HTML into a Document Object Model tree. If you are going to change HTML on the fly, then you've got to work within the DOM - you can't just change do a left(A,100) &amp; mid(A,120,12) &amp; right(A,10).</p>
<p>In JavaScript, you've got to get an element like this:</p>
<pre>var X = document.getElementById('myID');</pre>
<p>So X is the DOM Element for whatever tag had id='myID'. If it were a hyperlink, then it would contain:</p>
<pre>&lt;a id=&quot;myID&quot; href=&quot;http://www.PhillipSenn.com/Matrix/jQuery&quot;&gt;jQuery Matrix&lt;/a&gt;</pre>
<p>&nbsp;</p>
<p>&nbsp;</p>
