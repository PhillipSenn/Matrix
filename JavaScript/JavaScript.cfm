<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<!---
<form action="http://www.google.com/search">
	<input name="q">
	<input type="submit" value="Search">
</form>
--->
<!---
<div id="filters">
	<ul class="hfilter">
		<li>
			<input name="Usage" id="UsageIntro" type="checkbox" value="Intro" checked>
			<label for="UsageIntro">Intro</label>
		</li>
		<li>
			<input name="Usage" id="UsagePit" type="checkbox" value="Pit" checked>
			<label for="UsagePit">Pitfalls</label>
		</li>
		<li>
			<input name="Usage" id="UsageBegin" type="checkbox" value="Begin" checked>
			<label for="UsageBegin">Beginner</label>
		</li>
		<li>
			<input name="Usage" id="UsagejQuery" type="checkbox" value="$" checked>
			<label for="UsagejQuery">Use jQuery</label>
		</li>
		<li>
			<input name="Usage" id="UsageCSS" type="checkbox" value="CSS" checked>
			<label for="UsageCSS">Use CSS</label>
		</li>
		<li>
			<input name="Usage" id="UsageNo" type="checkbox" value="No" checked>
			<label for="UsageNo">Do not use</label>
		</li>
		<li>
			<input name="Usage" id="UsageAdv" type="checkbox" value="Adv" checked>
			<label for="UsageAdv">Advanced</label>
		</li>
		<li>
			<input name="Usage" id="UsageAll" type="checkbox" value="Select All" checked>
			<label for="UsageAll">Select All</label>
		</li>
	</ul>
	<div class="vfilter">
		<ul>
			<li><a href="Reference/Index.cfm">Reference</a></li>
		</ul>
	</div>
</div>
--->
<table>
	<thead>
	<tr>
		<th>&nbsp;</th>
		<th>Category</th>
		<th width="45">Lynda<br>
			.com</th>
		<th width="45">Use</th>
		<th>Operates On</th>
		<th>
		<div class="floatleft">Topic</div>
		<div class="floatright ui-state-default ui-corner-all">
			<span class="ui-icon ui-icon-circle-triangle-n"></span>		</div>		</th>
		<th>Example</th>
		<th>Notes</th>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td><a href="../jsZenGarden/ReservedWords/ReservedWords.cfm">Reserved Words</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td><a href="../jsZenGarden/Operators/Operators.cfm">Operators</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td><a href="../jsZenGarden/Objects/Objects.cfm">Objects</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td><a href="../jsZenGarden/Methods/Methods.cfm">Methods</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td><a href="../jsZenGarden/Properties/Properties.cfm">Properties</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td><a href="ReservedWords.cfm">Color Values</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td><a href="Functions.cfm">Functions</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td><a href="SpecialCharacters.cfm">Special Characters</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td><a href="../jsZenGarden/jsDummies/Chapter2/001/001.cfm">noscript</a></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>NO</td>
		<td>global scope</td>
		<td>no &quot;var&quot;</td>
		<td>X = 0;</td>
		<td>Any variables not explicitly defined are in the global scope and can be overwritten by any other JavaScript on the page.</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>Pit</td>
		<td>Statements</td>
		<td>no semicolon</td>
		<td>Statement one<br>
			Statement two</td>
		<td>JavaScript will insert a semi-colon after Statement one</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>window</td>
		<td>no object mentioned</td>
		<td>&nbsp;</td>
		<td>The global object</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>document</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>!</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>Intro</td>
		<td>Logical</td>
		<td>!</td>
		<td>IF (!A) {}</td>
		<td>Logical NOT</td>
	</tr>
	<tr>
		<td>!</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>Adv</td>
		<td>Value</td>
		<td>!!</td>
		<td>IF (!!A) {}</td>
		<td>Produces a boolean</td>
	</tr>
	<tr>
		<td>!</td>
		<td>Operator</td>
		<td>2.5</td>
		<td>No</td>
		<td>Comparison</td>
		<td>!=</td>
		<td>if (A != B) {}</td>
		<td>Not equal</td>
	</tr>
	<tr>
		<td>!</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>No</td>
		<td>Compound Assignment</td>
		<td class="center">!=</td>
		<td>&nbsp;</td>
		<td>Bitwise OR</td>
	</tr>
	<tr>
		<td>!</td>
		<td>Operator</td>
		<td>2.5</td>
		<td>Intro</td>
		<td>Comparison</td>
		<td>!==</td>
		<td>if (A !== B) {}</td>
		<td>Strict not equal (includes type checking)</td>
	</tr>
	<tr>
		<td>&quot;</td>
		<td>string literal</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>Strings</td>
		<td>&quot;</td>
		<td>var X = &quot;Phillip's JavaScript&quot;;</td>
		<td>quote</td>
	</tr>
	<tr>
		<td>&quot;</td>
		<td>String literal</td>
		<td>&nbsp;</td>
		<td>Intro</td>
		<td>&nbsp;</td>
		<td>&quot;</td>
		<td>var X = &quot;A&quot;;</td>
		<td>A pair of double quotes</td>
	</tr>
	<tr>
		<td>&quot;</td>
		<td>String literal</td>
		<td>&nbsp;</td>
		<td>Begin</td>
		<td>&nbsp;</td>
		<td>&quot;'&quot;</td>
		<td>&nbsp;</td>
		<td>var X = &quot;Phillip Senn's js Matrix&quot;;</td>
		</tr>
	<tr>
		<td>&quot;</td>
		<td>String literal</td>
		<td>&nbsp;</td>
		<td>Begin</td>
		<td>&nbsp;</td>
		<td>'&quot;'</td>
		<td>&nbsp;</td>
		<td>var X = 'I think &quot;js&quot; stands for &quot;Just Sayin&quot;';</td>
		</tr>
	<tr>
		<td>#</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td class="center">&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>$</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>13.2</td>
		<td>RegExp</td>
		<td>$</td>
		<td>var myRegExp = /hello$/;</td>
		<td>At the end</td>
	</tr>
	<tr>
		<td>%</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>Intro</td>
		<td>Arithmetic</td>
		<td>%</td>
		<td>X = A % B;</td>
		<td>Modulo (Remainder)</td>
	</tr>
	<tr>
		<td>%</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>No</td>
		<td>Compound Assignment</td>
		<td class="center">%=</td>
		<td>&nbsp;</td>
		<td>Modulus</td>
	</tr>
	<tr>
		<td>%</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>7.3</td>
		<td>operator</td>
		<td>%</td>
		<td>&nbsp;</td>
		<td>modulus</td>
	</tr>
	<tr>
		<td>&amp;</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>No</td>
		<td>Bitwise</td>
		<td>&amp;</td>
		<td>&nbsp;</td>
		<td>1st converst 64 bit float to 32 bit Integer</td>
	</tr>
	<tr>
		<td>&amp;</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>No</td>
		<td>&nbsp;</td>
		<td class="center">&amp;</td>
		<td>&nbsp;</td>
		<td>Bitwise AND</td>
		</tr>
	<tr>
		<td>&amp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>2.5</td>
		<td>&nbsp;</td>
		<td>&amp;&amp;</td>
		<td>&nbsp;</td>
		<td>logical AND</td>
		</tr>
	<tr>
		<td>&amp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&amp;&amp;</td>
		<td>if (A === 1 &amp;&amp; B === 2) {}</td>
		<td>IF A=1 AND B=2</td>
	</tr>
	<tr>
		<td>&amp;</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>Begin</td>
		<td>Logical</td>
		<td>&amp;&amp;</td>
		<td>return a &amp;&amp; a.member;</td>
		<td>if (a) { return a.member; } else { return a;}<br>
			Guard a</td>
	</tr>
	<tr>
		<td>&amp;</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>No</td>
		<td>&nbsp;</td>
		<td class="center">&amp;&amp;</td>
		<td>&nbsp;</td>
		<td>Logical AND</td>
	</tr>
	<tr>
		<td>&amp;</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>No</td>
		<td>Compound Assignment</td>
		<td class="center">&amp;=</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>'</td>
		<td>string literal</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>Strings</td>
		<td>'</td>
		<td>var X = 'Phillip Senn';</td>
		<td>apostrophe</td>
	</tr>
	<tr>
		<td>'</td>
		<td>String literal</td>
		<td>&nbsp;</td>
		<td>Intro</td>
		<td>&nbsp;</td>
		<td>'</td>
		<td>var X = 'A';</td>
		<td>A pair of single quotes</td>
	</tr>
	<tr>
		<td>(</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>Begin</td>
		<td>&nbsp;</td>
		<td class="center">()</td>
		<td>&nbsp;</td>
		<td>Function calls</td>
	</tr>
	<tr>
		<td>*</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>Intro</td>
		<td>Arithmetic</td>
		<td>*</td>
		<td>X = A * B;</td>
		<td>Multiplication</td>
	</tr>
	<tr>
		<td>*</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>13.2</td>
		<td>RegExp</td>
		<td>*</td>
		<td>var myRegExp = /hel*o/; </td>
		<td>zero or more</td>
	</tr>
	<tr>
		<td>*</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>No</td>
		<td>Compound Assignment</td>
		<td class="center">*=</td>
		<td>&nbsp;</td>
		<td>Multiplication</td>
	</tr>
	<tr>
		<td>+</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>Intro</td>
		<td>Increment</td>
		<td>+</td>
		<td>X = A + B;</td>
		<td>Addition, unless either A or B are strings.<br>
			X = +A + (+B); is safest.</td>
	</tr>
	<tr>
		<td>+</td>
		<td>Prefix operator</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>+</td>
		<td>+value</td>
		<td>NaN if Not a Number</td>
	</tr>
	<tr>
		<td>+</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>Intro</td>
		<td>String</td>
		<td>+</td>
		<td>X = A + B;</td>
		<td>Concatenation</td>
	</tr>
	<tr>
		<td>+</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>13.2</td>
		<td>RegExp</td>
		<td>+</td>
		<td>var myRegExp = /hel+o/; </td>
		<td>once or more</td>
	</tr>
	<tr>
		<td>+</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>Intro</td>
		<td>Increment</td>
		<td>++</td>
		<td>for (var i=0, ii=myArray.length; i&lt;ii; i++) {<br>
			}</td>
		<td>Adds 1 to i each time through the loop.<br>
			Computes myArray.length once.</td>
	</tr>
	<tr>
		<td>+</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>Intro</td>
		<td>Compound Assignment</td>
		<td class="center">+=</td>
		<td>X  += 1;</td>
		<td>Faster than X = X + 1;</td>
	</tr>
	<tr>
		<td>+</td>
		<td>Operator</td>
		<td>2.5</td>
		<td>Begin</td>
		<td>Increment</td>
		<td>++</td>
		<td>myArray[i++];</td>
		<td>myArray[i]; <br>
			i += 1; </td>
	</tr>
	<tr>
		<td>+</td>
		<td>Operator</td>
		<td>2.5</td>
		<td>Begin</td>
		<td>Increment</td>
		<td>++</td>
		<td>myArray[++i];</td>
		<td>i += 1; <br>
			myArray[i];</td>
	</tr>
	<tr>
		<td>,</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>Begin</td>
		<td>&nbsp;</td>
		<td class="center">,</td>
		<td>&nbsp;</td>
		<td>causes two expressions to be executed sequentially.</td>
		</tr>
	
	<tr>
		<td>-</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>Begin</td>
		<td>&nbsp;</td>
		<td class="center">-</td>
		<td>&nbsp;</td>
		<td>Negation</td>
		</tr>
	<tr>
		<td>-</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>Intro</td>
		<td>Decrement</td>
		<td>-</td>
		<td>X = A - B;</td>
		<td>Subtraction</td>
	</tr>
	<tr>
		<td>-</td>
		<td>Operator</td>
		<td>2.5</td>
		<td>No</td>
		<td>Decrement</td>
		<td>--</td>
		<td>X--;</td>
		<td>X -= 1;</td>
	</tr>
	<tr>
		<td>-</td>
		<td>Operator</td>
		<td>2.5</td>
		<td>No</td>
		<td>Decrement</td>
		<td>--</td>
		<td>--X;</td>
		<td>X -= 1;</td>
	</tr>
	<tr>
		<td>-</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>No</td>
		<td>Compound Assignment</td>
		<td class="center">-=</td>
		<td>&nbsp;</td>
		<td>Subtraction</td>
	</tr>
	<tr>
		<td>.</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>Begin</td>
		<td>&nbsp;</td>
		<td class="center">.</td>
		<td>&nbsp;</td>
		<td>Field Access</td>
		</tr>
	<tr>
		<td>.</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>13.2</td>
		<td>RegExp</td>
		<td>.</td>
		<td>&nbsp;</td>
		<td>var myRegExp = /he..o/; any character</td>
		</tr>
	<tr>
		<td>.</td>
		<td>Object literal</td>
		<td>&nbsp;</td>
		<td>Intro</td>
		<td>Objects</td>
		<td>.</td>
		<td>myObject.Firstname = 'Phillip';<br>
			myObject.Lastname = 'Senn'; </td>
		<td>Dot notation<br>
			An object is a collection of name/value pairs</td>
	</tr>
	<tr>
		<td>.</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>Begin</td>
		<td>Objects</td>
		<td>.</td>
		<td><p>var myObject.myMethod = function(A) {<br>
			&nbsp;&nbsp;&nbsp;return B;<br>
			};</p>
			<p>myObject.myMethod(3);</p></td>
		<td>Dot notation<br>
			A method is a function that is assigned to an object</td>
	</tr>
	<tr>
		<td>/</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>Intro</td>
		<td>Arithmetic</td>
		<td>/</td>
		<td>X = A / B;</td>
		<td>Division</td>
	</tr>
	<tr>
		<td>/</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>13.2</td>
		<td>RegExp</td>
		<td>/</td>
		<td>&nbsp;</td>
		<td>var X = /hello/</td>
		</tr>
	<tr>
		<td>/</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>No</td>
		<td>Compound Assignment</td>
		<td class="center">/=</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		</tr>
	<tr>
		<td>/</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>Begin</td>
		<td>statement</td>
		<td>/* */</td>
		<td>/*<br>
			Multi-line comment <br>
			*/</td>
		<td>Be careful not to include something that has */ inside the block.</td>
	</tr>
	<tr>
		<td>/</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>Intro</td>
		<td>statement</td>
		<td>//</td>
		<td>// Single line comment</td>
		<td>Crockford prefers this over multi-line style</td>
	</tr>
	<tr>
		<td>:</td>
		<td>Operator</td>
		<td>2.5</td>
		<td>Adv</td>
		<td>Ternary</td>
		<td>?:</td>
		<td>B = (A) ? C : D</td>
		<td>if(A) { B=C } else { B=D}</td>
	</tr>
	<tr>
		<td>:</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>operator</td>
		<td>:</td>
		<td>Assignment</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td class="center">;</td>
		<td>&nbsp;</td>
		<td>End of statement</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>Intro</td>
		<td>Statements</td>
		<td>;</td>
		<td><p>Statement one;<br>
			Statement two;</p></td>
		<td>Use a semicolon for  end of statement</td>
	</tr>
	<tr>
		<td>&lt;</td>
		<td>Operator</td>
		<td>2.5</td>
		<td>Intro</td>
		<td>Comparison</td>
		<td>&lt;</td>
		<td>if (A &lt; B) {}</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>&lt;</td>
		<td>tag</td>
		<td>&nbsp;</td>
		<td>Pit</td>
		<td>html</td>
		<td>&lt;!--</td>
		<td>&lt;!-- JavaScript code goes here // --&gt;</td>
		<td>All browsers now support JavaScript</td>
	</tr>
	<tr>
		<td>&lt;</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>Intro</td>
		<td>Comparison</td>
		<td>&lt;=</td>
		<td>&nbsp;</td>
		<td>if (A &lt;= B) {}</td>
	</tr>
	<tr>
		<td>&lt;</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>No</td>
		<td>Bitwise</td>
		<td>&lt;&lt;</td>
		<td>&nbsp;</td>
		<td>bit shifting</td>
	</tr>
	<tr>
		<td>&lt;</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>No</td>
		<td>Compound Assignment</td>
		<td class="center">&lt;&lt;=</td>
		<td>&nbsp;</td>
		<td>Left Shift</td>
	</tr>
	<tr>
		<td>=</td>
		<td>Operator</td>
		<td>2.5</td>
		<td>Intro</td>
		<td>Assignment</td>
		<td>=</td>
		<td>var A = B + 2;</td>
		<td>Remember to scope your vars</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>Numbers</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>100 and 1e2 are the same number</td>
	</tr>
	<tr>
		<td>=</td>
		<td>Operator</td>
		<td>2.5</td>
		<td>Pit</td>
		<td>Comparison</td>
		<td>=</td>
		<td>if (A = B} {}</td>
		<td>This will assign the value of B to A and then evaluate to true. Always use === when comparing.</td>
	</tr>
	<tr>
		<td>=</td>
		<td>Operator</td>
		<td>2.5</td>
		<td>Pit</td>
		<td>Comparison</td>
		<td>==</td>
		<td><p> '0' == 0 // true<br>
			'0' == false  // true<br>
			'0' ==  '' // false<br>
			0 == '' // true<br>
			null == undefined // true<br>
			' \t\r\n ' == 0 // true </p>
			<p>false == 'false' // false<br>
				false == undefined // false<br>
				null == false // false<br>
			</p></td>
		<td><p>=== will produce false for all of these</p></td>
	</tr>
	<tr>
		<td>=</td>
		<td>Operator</td>
		<td>2.5</td>
		<td>Intro</td>
		<td>Comparison</td>
		<td>===</td>
		<td>if (A === B) {} </td>
		<td>&quot;0&quot; === 0 is: false</td>
	</tr>
	<tr>
		<td>&gt;</td>
		<td>Operator</td>
		<td>2.5</td>
		<td>Intro</td>
		<td>Comparison</td>
		<td>&gt;</td>
		<td>if (A &gt; B) {}</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>&gt;</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>Intro</td>
		<td>Comparison</td>
		<td>&gt;=</td>
		<td>if (A &gt;= B) {}</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>&gt;</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>No</td>
		<td>Bitwise</td>
		<td>&gt;&gt;</td>
		<td>&nbsp;</td>
		<td>bit shifting</td>
	</tr>
	<tr>
		<td>&gt;</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>No</td>
		<td>Bitwise</td>
		<td>&gt;&gt;&gt;</td>
		<td>&nbsp;</td>
		<td>bit shifting</td>
	</tr>
	<tr>
		<td>&gt;</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>No</td>
		<td>Compound Assignment</td>
		<td class="center">&gt;&gt;=</td>
		<td>&nbsp;</td>
		<td>Right Shift</td>
	</tr>
	<tr>
		<td>&gt;</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>No</td>
		<td>Compound Assignment</td>
		<td class="center">&gt;&gt;&gt;=</td>
		<td>&nbsp;</td>
		<td>Unsigned Right Shift</td>
	</tr>
	<tr>
		<td>?</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>13.2</td>
		<td>RegExp</td>
		<td>?</td>
		<td>&nbsp;</td>
		<td>var myRegExp = /hel?o/; zero or one</td>
	</tr>
	<tr>
		<td>@</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td class="center">&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>[</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>Begin</td>
		<td>&nbsp;</td>
		<td class="center">[]</td>
		<td>&nbsp;</td>
		<td>Array Index</td>
		</tr>
	<tr>
		<td>[</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>13.2</td>
		<td>RegExp</td>
		<td>[]</td>
		<td>&nbsp;</td>
		<td>var myRegExp = /[crnld]ope/; range of characters</td>
		</tr>
	<tr>
		<td>[</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>[]</td>
		<td>&nbsp;</td>
		<td>arr[0]</td>
		</tr>
	<tr>
		<td>[</td>
		<td>Array literal</td>
		<td>&nbsp;</td>
		<td>Adv</td>
		<td>Arrays</td>
		<td>[]</td>
		<td>var myArray = [0,1,2];</td>
		<td>Arrays are objects with zero-based index</td>
	</tr>
	<tr>
		<td>[</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>Inter</td>
		<td>Arrays</td>
		<td>[]</td>
		<td><p>var cols=['B','I','N','G','O'];<br>
			var rows=[1,2,3,4,5];<br>
			var BingoCard = [rows,cols];<br>
			BingoCard[3][0] = 2;</p></td>
		<td>Assigns the value 2 to the 4th row, 1st column</td>
	</tr>
	<tr>
		<td>[</td>
		<td>Object literal</td>
		<td>&nbsp;</td>
		<td>Adv</td>
		<td>subscript notation</td>
		<td>['X']</td>
		<td>var myObject = {};<br>
			myObject['class'] = 'class is a reserved word';</td>
		<td>If you don't use reserved words for your variable names, you won't have to guard them</td>
	</tr>
	<tr>
		<td>[</td>
		<td>Array literal</td>
		<td>&nbsp;</td>
		<td>No</td>
		<td>Associative Array</td>
		<td>['X']</td>
		<td><p>var myArray = [];<br>
			myArray['FirstName'] = 'Phillip';<br>
			myArray['LastName'] = 'Senn';</p></td>
		<td>Arrays are  objects with a .length property.<br>
			Arrays are <strong>numerically</strong> indexed lists.</td>
	</tr>
	<tr>
		<td>\</td>
		<td>Escape sequence</td>
		<td>&nbsp;</td>
		<td>Begin</td>
		<td>&nbsp;</td>
		<td>\</td>
		<td>var X = &quot;ABC\<br>
			DEF&quot;;</td>
		<td>continuation character</td>
	</tr>
	<tr>
		<td>\</td>
		<td>Escape sequence</td>
		<td>&nbsp;</td>
		<td>Adv</td>
		<td>&nbsp;</td>
		<td>\&quot;</td>
		<td>&nbsp;</td>
		<td>var X = &quot;I think \&quot;js\&quot; stands for \&quot;Just Sayin\&quot;&quot;;</td>
		</tr>
	<tr>
		<td>\</td>
		<td>Escape sequence</td>
		<td>&nbsp;</td>
		<td>Begin</td>
		<td>&nbsp;</td>
		<td>\n</td>
		<td>var X = &quot;Line1\nLine2&quot;;</td>
		<td>new line</td>
	</tr>
	<tr>
		<td>\</td>
		<td>Escape sequence</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>\0</td>
		<td>&nbsp;</td>
		<td>null</td>
	</tr>
	<tr>
		<td>\</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>\b</td>
		<td>&nbsp;</td>
		<td>Backspace</td>
	</tr>
	<tr>
		<td>\</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>\t</td>
		<td>&nbsp;</td>
		<td>Tab</td>
	</tr>
	<tr>
		<td>\</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>\n</td>
		<td>&nbsp;</td>
		<td>Newline</td>
	</tr>
	<tr>
		<td>\</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>\v</td>
		<td>&nbsp;</td>
		<td>Vertical tab</td>
	</tr>
	<tr>
		<td>\</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>\f</td>
		<td>&nbsp;</td>
		<td>Form feed</td>
	</tr>
	<tr>
		<td>\</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>\r</td>
		<td>&nbsp;</td>
		<td>Carriage return</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>literal</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>RegExp</td>
		<td>\s</td>
		<td>&nbsp;</td>
		<td>all of the whitespace characters</td>
	</tr>
	<tr>
		<td>\</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>\x</td>
		<td>&nbsp;</td>
		<td>The Latin-1 character specified by 2 hex digits</td>
	</tr>
	<tr>
		<td>\</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>\u</td>
		<td>&nbsp;</td>
		<td>The Unicode character specified by 4 hex digits</td>
	</tr>
	<tr>
		<td>\</td>
		<td>Escape sequence</td>
		<td>&nbsp;</td>
		<td>Adv</td>
		<td>&nbsp;</td>
		<td>\'</td>
		<td>&nbsp;</td>
		<td>var X = 'Phillip Senn\'s js Matrix';</td>
	</tr>
	<tr>
		<td>\</td>
		<td>Escape character</td>
		<td>&nbsp;</td>
		<td>Begin</td>
		<td>Strings</td>
		<td>\\</td>
		<td> var X='c:\\inetpub\\wwwroot';</td>
		<td>\&quot;<br>
			\'<br>
			\\<br>
			\/<br>
			\b backspace<br>
			\f formfeed<br>
			\n new line<br>
			\r carriage return<br>
			\t tab<br>
			\u???? hexademcimal digits</td>
	</tr>
	<tr>
		<td>\</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>13.2</td>
		<td>RegExp</td>
		<td>\w</td>
		<td>&nbsp;</td>
		<td>var myRegExp = /\wello/; alphanumeric or _</td>
		</tr>
	<tr>
		<td>\</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>13.2</td>
		<td>RegExp</td>
		<td>\b</td>
		<td>&nbsp;</td>
		<td>var myRegExp = /\bhello/; word boundary</td>
		</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>\&lt;LF&gt;</td>
		<td>&nbsp;</td>
		<td>alert('Hello\&lt;LF&gt;World');</td>
		</tr>
	<tr>
		<td>^</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>No</td>
		<td>Bitwise</td>
		<td>^</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		</tr>
	<tr>
		<td>^</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>13.2</td>
		<td>RegExp</td>
		<td>^</td>
		<td>&nbsp;</td>
		<td>var myRegExp = /^hello/; // At the start</td>
		</tr>
	<tr>
		<td>&nbsp;</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>No</td>
		<td>&nbsp;</td>
		<td class="center">^</td>
		<td>&nbsp;</td>
		<td>Bitwise XOR</td>
		</tr>
	<tr>
		<td>^</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>No</td>
		<td>Compound Assignment</td>
		<td class="center">^=</td>
		<td>&nbsp;</td>
		<td>Bitwise XOR</td>
	</tr>
	<tr>
		<td>_</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td class="center">_</td>
		<td>&nbsp;</td>
		<td>underscore</td>
	</tr>
	<tr>
		<td>`</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>{</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>{}</td>
		<td>&nbsp;</td>
		<td>if () {}</td>
		</tr>
	<tr>
		<td>{</td>
		<td>Object literal</td>
		<td>&nbsp;</td>
		<td>Adv</td>
		<td>Objects</td>
		<td>{'A':'B'}</td>
		<td>&nbsp;</td>
		<td>var myObject = {};<br>
			myObject{'class' : 'class is a reserved word'};</td>
		</tr>
	<tr>
		<td>{</td>
		<td>Object literal</td>
		<td>&nbsp;</td>
		<td>Begin</td>
		<td>Objects</td>
		<td>{A:'B'}</td>
		<td>var myObject = {<br>
			&nbsp;&nbsp;&nbsp;Firstname:'Phillip',<br>
			&nbsp;&nbsp;&nbsp;Lastname:'Senn'<br>
			} </td>
		<td>Use assignment with an equal sign</td>
	</tr>
	<tr>
		<td>{</td>
		<td>Object literal</td>
		<td>&nbsp;</td>
		<td>Intro</td>
		<td>Objects</td>
		<td>{}</td>
		<td>var myObject = {};</td>
		<td>curly braces</td>
	</tr>
	<tr>
		<td>|</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>||</td>
		<td>if (A === 1 || B === 2) {}</td>
		<td>IF A=1 OR B=2</td>
	</tr>
	<tr>
		<td>|</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>Intro</td>
		<td>Logical</td>
		<td>||</td>
		<td> X = A || B;</td>
		<td>if (A) { X = A; } else { X = B; }<br>
			Use for default values.</td>
	</tr>
	<tr>
		<td>|</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>No</td>
		<td>Bitwise</td>
		<td>|</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>|</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>13.2</td>
		<td>RegExp</td>
		<td>|</td>
		<td>&nbsp;</td>
		<td>var myRegExp = /hello|goodbye/; either|or</td>
		</tr>
	<tr>
		<td>|</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>No</td>
		<td>&nbsp;</td>
		<td class="center">|</td>
		<td>&nbsp;</td>
		<td>Bitwise OR</td>
		</tr>
	<tr>
		<td>|</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>2.5</td>
		<td>&nbsp;</td>
		<td>||</td>
		<td>&nbsp;</td>
		<td>logical OR</td>
		</tr>
	<tr>
		<td>|</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>No</td>
		<td>&nbsp;</td>
		<td class="center">||</td>
		<td>&nbsp;</td>
		<td>Logical OR</td>
		</tr>
	<tr>
		<td>}</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>{}</td>
		<td>&nbsp;</td>
		<td>var obj = {A:1, B:2};</td>
		</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td class="center"><a href="http://tutsplus.com/lesson/prototypal-inheritance-and-refactoring-the-slider/?WT.mc_id=learnjquery">~~</a></td>
		<td>var X = (~~(dir='next') || -1)</td>
		<td>if (dir='next') { X=1 } else { X=-1}</td>
	</tr>
	<tr>
		<td>~</td>
		<td>Operator</td>
		<td>&nbsp;</td>
		<td>No</td>
		<td>&nbsp;</td>
		<td class="center">~</td>
		<td>&nbsp;</td>
		<td>Bitwise NOT</td>
		</tr>
	<tr>
		<td>A</td>
		<td>Method</td>
		<td>&nbsp;</td>
		<td>Begin</td>
		<td>Math</td>
		<td><a href="Methods/Math/Abs.cfm">Abs</a></td>
		<td>Math.abs(X)</td>
		<td>Absolute Value</td>
	</tr>
	</thead>
	<tbody>
		<tr>
			<td>A</td>
			<td>ECMAScript&nbsp;3</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>abstract</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>A</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>abstract</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>A</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Math</td>
			<td>acos</td>
			<td>&nbsp;</td>
			<td>arccosine </td>
		</tr>
		<tr>
			<td>A</td>
			<td>jQuery</td>
			<td>&nbsp;</td>
			<td>13.3</td>
			<td>window</td>
			<td>ActiveXObject</td>
			<td>if (window.ActiveXObject) {<br>
				myRequest = new ActiveXObject(&quot;Microsoft.XMLHTTP&quot;);<br>
				}</td>
			<td>$.Ajax();</td>
		</tr>
		<tr>
			<td>A</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>node</td>
			<td>addEventListener</td>
			<td>var node=getElementById('myID');<br>
				node.addEventListener('click', myFunction, false);</td>
			<td>$('#myID).click(myFunction);<br>
				$('body').delegate('#myID','click',myFunction);<br>
				$('#myID).bind('click',myFunction);</td>
		</tr>
		<tr>
			<td>A</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>6.1</td>
			<td>&nbsp;</td>
			<td>addEventListener</td>
			<td>&nbsp;</td>
			<td>IE 9+</td>
		</tr>
		<tr>
			<td>A</td>
			<td>window</td>
			<td>&nbsp;</td>
			<td><a href="http://www.lynda.com/tutorials/85868-2.html">2.3</a></td>
			<td>Worker</td>
			<td>addEventListener</td>
			<td><a href="Worker/addEventListener.cfm">Example</a></td>
			<td>addEventListener(msg,callback,false);</td>
		</tr>
		<tr>
			<td>A</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>window</td>
			<td>alert</td>
			<td>alert('Hello World');</td>
			<td>Use console.log with Firebug or<br>
				$('body').append('Hello World');</td>
		</tr>
		<tr>
			<td>A</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>1.2</td>
			<td>&nbsp;</td>
			<td>alert</td>
			<td>Modal</td>
			<td>console.log</td>
		</tr>
		<tr>
			<td>A</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>document</td>
			<td>anchor</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>A</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Math</td>
			<td>anchor</td>
			<td>&nbsp;</td>
			<td>jQuery</td>
		</tr>
		<tr>
			<td>A</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>String</td>
			<td>anchor</td>
			<td>&nbsp;</td>
			<td>$('a')</td>
		</tr>
		<tr>
			<td>A</td>
			<td>Collection</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>document</td>
			<td>anchors</td>
			<td>&nbsp;</td>
			<td>Netscape only</td>
		</tr>
		<tr>
			<td>A</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>node</td>
			<td>appendChild</td>
			<td>&nbsp;</td>
			<td>node.appendChild(myTR);</td>
		</tr>
		<tr>
			<td>A</td>
			<td>jQuery</td>
			<td>&nbsp;</td>
			<td>5.3</td>
			<td>&nbsp;</td>
			<td>appendChild</td>
			<td>&nbsp;</td>
			<td>append</td>
		</tr>
		<tr>
			<td>A</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>document</td>
			<td>applet</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>A</td>
			<td>Collection</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>document</td>
			<td>applets</td>
			<td>&nbsp;</td>
			<td>Netscape only</td>
		</tr>
		<tr>
			<td>A</td>
			<td>Function</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>function</td>
			<td>apply</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>A</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>navigator</td>
			<td><a href="../jsZenGarden/jsDummies/Chapter3/003/003.cfm">appname</a></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>A</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>13.1</td>
			<td>navigator</td>
			<td>appName</td>
			<td>&nbsp;</td>
			<td>Browser sniffing</td>
		</tr>
		<tr>
			<td>A</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>document</td>
			<td>area</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>A</td>
			<td>Strict Mode</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>arguments</td>
			<td>&nbsp;</td>
			<td>Not allowed as variable, function or parameter</td>
		</tr>
		<tr>
			<td>A</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>arguments</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>A</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Function</td>
			<td>arguments</td>
			<td>function() {<br>
				&nbsp;&nbsp;&nbsp;var firstArgument = arguments[0];<br>
				}</td>
			<td>You can refer to arguments being passed in by their name or through the arguments array</td>
		</tr>
		<tr>
			<td>A</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>document</td>
			<td>all</td>
			<td>Microsoft only</td>
			<td>jQuery('*')</td>
		</tr>
		<tr>
			<td>A</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Array</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>A</td>
			<td>Type</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Array</td>
			<td>&nbsp;</td>
			<td>Is Array a type?</td>
		</tr>
		<tr>
			<td>A</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Array</td>
			<td>&nbsp;</td>
			<td>var X = new Array();</td>
		</tr>
		<tr>
			<td>A</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Math</td>
			<td>asin</td>
			<td>&nbsp;</td>
			<td>arcsine</td>
		</tr>
		<tr>
			<td>A</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Math</td>
			<td>atan</td>
			<td>&nbsp;</td>
			<td>arctangent</td>
		</tr>
		<tr>
			<td>A</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Math</td>
			<td>atan2</td>
			<td>&nbsp;</td>
			<td>angle</td>
		</tr>
		<tr>
			<td>A</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>node</td>
			<td>attachEvent</td>
			<td>node.attachEvent(&quot;on&quot; + type, myFunction);</td>
			<td>Microsoft - must use global event object</td>
		</tr>
		<tr>
			<td>A</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>node</td>
			<td>attachEvent</td>
			<td><p>var node=getElementById('myID');<br>
				node.attachEvent(&quot;onclick&quot;,myFunction);</p></td>
			<td>$('#myID).click(myFunction);<br>
$('body').delegate('#myID','click',myFunction);<br>
$('#myID).bind('click',myFunction);</td>
		</tr>
		<tr>
			<td>A</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>6.1</td>
			<td>&nbsp;</td>
			<td>attachEvent</td>
			<td>&nbsp;</td>
			<td>IE only</td>
		</tr>
		<tr>
			<td>B</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>css</td>
			<td>style</td>
			<td>backgroundColor</td>
			<td>&nbsp;</td>
			<td>css background-color</td>
		</tr>
		<tr>
			<td>B</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>9.1</td>
			<td>&nbsp;</td>
			<td>backgroundColor</td>
			<td>&nbsp;</td>
			<td>css</td>
		</tr>
		<tr>
			<td>B</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>document</td>
			<td>bgColor</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>B</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>css</td>
			<td>String</td>
			<td>big</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>B</td>
			<td>Function</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>function</td>
			<td>bind</td>
			<td>&nbsp;</td>
			<td>function.bind(this, args...)</td>
		</tr>
		<tr>
			<td>B</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>css</td>
			<td>String</td>
			<td>blink</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>B</td>
			<td>Input Event</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>node</td>
			<td>blur</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>B</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>document</td>
			<td>body</td>
			<td>&nbsp;</td>
			<td>$('body')</td>
		</tr>
		<tr>
			<td>B</td>
			<td>jQuery</td>
			<td>&nbsp;</td>
			<td>14.2</td>
			<td>document</td>
			<td>body</td>
			<td>&nbsp;</td>
			<td>$('body')</td>
		</tr>
		<tr>
			<td>B</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>css</td>
			<td>String</td>
			<td>bold</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>B</td>
			<td>Unicode </td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>BOM</td>
			<td>Byte Order Mark is now whitespace</td>
			<td>&lt;BOM&gt;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>BOM</td>
			<td>&nbsp;</td>
			<td>Browser Object Model</td>
		</tr>
		<tr>
			<td>B</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Boolean</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>B</td>
			<td>ECMAScript&nbsp;3</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>boolean</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>B</td>
			<td>Function</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Value</td>
			<td>Boolean</td>
			<td>Boolean(X)</td>
			<td>true or false</td>
		</tr>
		<tr>
			<td>B</td>
			<td>Type wrapper</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>Boolean</td>
			<td>&nbsp;</td>
			<td>new Boolean()</td>
		</tr>
		<tr>
			<td>B</td>
			<td>Value</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td>Booleans</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>B</td>
			<td>Type</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>Boolean</td>
			<td>new Boolean()</td>
			<td>Loose typing</td>
		</tr>
		<tr>
			<td>B</td>
			<td>Object</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Boolean</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>B</td>
			<td>Data Type</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Boolean</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>It's implied</td>
		</tr>
		<tr>
			<td>B</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>css</td>
			<td>style</td>
			<td>borderRadius</td>
			<td>&nbsp;</td>
			<td>css border-radius</td>
		</tr>
		<tr>
			<td>B</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td><a href="../jsZenGarden/ReservedWords/Break.cfm">break</a></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>B</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td>break</td>
			<td>myLabel:<br>
			for (var i=0,ii=myArray.length; i&lt;ii; i++) {<br>
			&nbsp;&nbsp;&nbsp;if (i === 7) {<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break myLabel;<br>
			&nbsp;&nbsp;&nbsp;}<br>
			}<br>					</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>B</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td><a href="../jsZenGarden/ReservedWords/Break.cfm">break</a></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>B</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>2.7</td>
			<td>stmt</td>
			<td>break</td>
			<td>if (i === 101) break;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>B</td>
			<td>ECMAScript&nbsp;3</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>byte</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>B</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>byte</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Best practice</td>
			<td>&nbsp;</td>
			<td>Intro</td>
			<td>Variables</td>
			<td>camel casing</td>
			<td>var myVariable = 1;<br>
				var MyObject = {};</td>
			<td>Variables start lower case <br>
				Objects start upper case</td>
		</tr>
		<tr>
			<td>C</td>
			<td>method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>event</td>
			<td>cancelBubble</td>
			<td>IE only</td>
			<td>return false;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>case</td>
			<td>Multiple cases act like OR conditions unless break is used</td>
			<td>if (A === B) OR (C === D) {}</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td>catch</td>
			<td>&nbsp;</td>
			<td> try {}
				catch (){}
				finally {} </td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td>catch</td>
			<td>&nbsp;</td>
			<td> try {}
				catch (){}
				finally {} </td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>html</td>
			<td>CDATA</td>
			<td>&lt;!--//--&gt;&lt;![CDATA[//&gt;&lt;!--<br>
				JavaScript code goes here<br>
				//--&gt;&lt;!]]&gt;</td>
			<td>Used in an XHTML document to hide JavaScript from Internet Explorer.</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>Math</td>
			<td><a href="Methods/Math/Ceil.cfm">ceil</a></td>
			<td>the smallest integer greater than or equal X</td>
			<td>Careful with negatives</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Input Event</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>node</td>
			<td>change</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>ECMAScript&nbsp;3</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>char</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>char</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>String</td>
			<td>charAt</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>String</td>
			<td>charAt</td>
			<td>&nbsp;</td>
			<td>substr</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>String</td>
			<td>charCodeAt</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>8.3</td>
			<td>&nbsp;</td>
			<td>checked</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>childNodes</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Array</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>&nbsp;</td>
			<td>childNodes</td>
			<td>var myVariable = myNode.childNodes[2];</td>
			<td>.children()</td>
		</tr>
		<tr>
			<td>C</td>
			<td>ECMAScript&nbsp;5</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>class</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>class</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>class</td>
			<td>&nbsp;</td>
			<td>reserved word</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>document</td>
			<td>classes</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>node</td>
			<td>className</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>node</td>
			<td>className</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>className</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>setInterval</td>
			<td>clearInterval</td>
			<td>&nbsp;</td>
			<td>clearInterval(X);</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>6.4</td>
			<td>method</td>
			<td>clearInterval</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>6.4</td>
			<td>method</td>
			<td>clearTimeout</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>setTimeout</td>
			<td>clearTimeout</td>
			<td>&nbsp;</td>
			<td>clearTimeout(X);</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Event</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>node</td>
			<td>click</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>6.1</td>
			<td>event</td>
			<td>click</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>jQuery</td>
			<td>&nbsp;</td>
			<td>14.2</td>
			<td>documentElement</td>
			<td>clientHeight</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>node</td>
			<td>cloneNode</td>
			<td>Clone an individual element</td>
			<td>$('tr').clone();</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>node</td>
			<td>cloneNode(true)</td>
			<td>&nbsp;</td>
			<td>Clone an element and all of its descendents</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Application</td>
			<td>closure</td>
			<td>&nbsp;</td>
			<td><p>MYAPP.Trivia = (function() {<br>
				&nbsp;&nbsp; common variables and fucntions<br>
				&nbsp;&nbsp;&nbsp;return {<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;myFunction1:	function(A,B)	{<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;...<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;myFunction2: function() {<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;...<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
				&nbsp;&nbsp;&nbsp;}<br>
				}()); <br>
			</p></td>
		</tr>
		<tr>
			<td>C</td>
			<td>Scoping</td>
			<td>&nbsp;</td>
			<td>Closure</td>
			<td>&nbsp;</td>
			<td><a href="Scoping/Closure.cfm">Example</a></td>
			<td>&nbsp;</td>
			<td>Inter</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Scoping</td>
			<td>&nbsp;</td>
			<td>Global Closure</td>
			<td>&nbsp;</td>
			<td><a href="Scoping/GlobalClosure.cfm">Example</a></td>
			<td>&nbsp;</td>
			<td>Inter</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Scoping</td>
			<td>&nbsp;</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td><a href="Scoping/Property.cfm">Example</a></td>
			<td>Use closure instead</td>
			<td>No</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Scoping</td>
			<td>&nbsp;</td>
			<td>Closure</td>
			<td>&nbsp;</td>
			<td><a href="Scoping/Named.cfm">Example</a></td>
			<td>&nbsp;</td>
			<td>No parenthesis</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Scoping</td>
			<td>&nbsp;</td>
			<td>Closure</td>
			<td>&nbsp;</td>
			<td><a href="Scoping/Lexical.cfm">Example</a></td>
			<td>&nbsp;</td>
			<td>With parenthesis</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>9.1</td>
			<td>&nbsp;</td>
			<td>color</td>
			<td>&nbsp;</td>
			<td>css</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>comment</td>
			<td>&nbsp;</td>
			<td>js for dummies?</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>String</td>
			<td>concat</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Arrays</td>
			<td><a href="../jsZenGarden/Methods/Array/concat.cfm">concat</a></td>
			<td>a = b.concat(c)</td>
			<td>A shallow copy b+c is assigned to a.</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>String</td>
			<td>concat</td>
			<td>&nbsp;</td>
			<td>+</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Intro</td>
			<td>&nbsp;</td>
			<td>confirm</td>
			<td>if (!confirm(&quot;Are you sure?&quot;)) {<br>
				&nbsp;&nbsp;&nbsp;return false;<br>
				}</td>
			<td>Could use a better UI, but this is a quick and dirty way to get an OK/Cancel response.</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>2.6</td>
			<td>stmt</td>
			<td>console</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		
		<tr>
			<td>C</td>
			<td>ECMAScript&nbsp;5</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>const</td>
			<td>&nbsp;</td>
			<td>var</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>const</td>
			<td>&nbsp;</td>
			<td>var</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>String</td>
			<td>Constructor</td>
			<td>&nbsp;</td>
			<td>x = new String(&quot;X&quot;); if (x.constructor == String)</td>
		</tr>
		<tr>
			<td>C</td>
			<td>mechanism</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>functions</td>
			<td>Constructor</td>
			<td>function myClass() {<br>
				this.member = initializer;<br>
				return this;} // optional<br>
				myClass.prototype.myFunction = function(a,b) {...};<br>
				var	myObj	=	new myClass();</td>
			<td>if <b>new</b> is omitted, the global object is clobbered.</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>constructor</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Number</td>
			<td>Constructor</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>Array</td>
			<td>constructor</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>Date</td>
			<td>constructor</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td><a href="../jsZenGarden/ReservedWords/Continue.cfm">continue</a></td>
			<td>&nbsp;</td>
			<td>Similar to break</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td><a href="Continue.cfm">continue</a></td>
			<td>&nbsp;</td>
			<td>Similar to break</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>2.7</td>
			<td>stmt</td>
			<td>continue</td>
			<td>&nbsp;</td>
			<td>Check the loop condition again</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Math</td>
			<td>cos</td>
			<td>&nbsp;</td>
			<td>cosine</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Object</td>
			<td>create</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>myObject</td>
			<td>create</td>
			<td>myObject=Object.create(Object.Prototype)</td>
			<td>Not used</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td>createDocumentFragment</td>
			<td><a href="DOM/createDocumentFragment.cfm">Example</a></td>
			<td><a href="http://marketplace.tutsplus.com/item/the-11-javascript-mistakes-youre-making/267373">Cache the DOM</a></td>
		</tr>
		<tr>
			<td>C</td>
			<td>method</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>document</td>
			<td>createElement</td>
			<td>var X = document.createElement('p');</td>
			<td>var X = $('&lt;p&gt;&lt;/p&gt;');</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>5.3</td>
			<td>method</td>
			<td>createElement</td>
			<td>&nbsp;</td>
			<td>Don't specify nodeType</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>5.3</td>
			<td>method</td>
			<td>createTextNode</td>
			<td>&nbsp;</td>
			<td>html</td>
		</tr>
		<tr>
			<td>C</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>document</td>
			<td>createTextNode</td>
			<td>&nbsp;</td>
			<td>$('text');</td>
		</tr>
		<tr>
			<td>C</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>css</td>
			<td>style</td>
			<td>cssFloat</td>
			<td>&nbsp;</td>
			<td>css float</td>
		</tr>
		<tr>
			<td>D</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>D</td>
			<td>Function</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>Date</td>
			<td>&nbsp;</td>
			<td>Based on Java's date class</td>
		</tr>
		<tr>
			<td>D</td>
			<td>Object</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td><a href="Objects/Date.cfm">Date</a></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>D</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>object</td>
			<td>Date</td>
			<td>&nbsp;</td>
			<td>var X = new Date();</td>
		</tr>
		<tr>
			<td>D</td>
			<td>Event</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>node</td>
			<td>dblclick</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>D</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>2.6</td>
			<td>console</td>
			<td>debug</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>D</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td><a href="../jsZenGarden/ReservedWords/Debugger.cfm">debugger</a></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>D</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td><a href="Debugger.cfm">debugger</a></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>D</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>decodeURI</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>D</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>decodeURIComponent</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>D</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>default</td>
			<td>&nbsp;</td>
			<td>else</td>
		</tr>
		<tr>
			<td>D</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>default</td>
			<td>&nbsp;</td>
			<td>else</td>
		</tr>
		<tr>
			<td>D</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>document</td>
			<td>defaultView()</td>
			<td>&nbsp;</td>
			<td>document.defaultView().getComputedStyle(node,&quot;&quot;).<br>
getPropertyValue(stylename);</td>
		</tr>
		<tr>
			<td>D</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Object</td>
			<td>defineProperty</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>D</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Object</td>
			<td>defineProperties</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>D</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>Object</td>
			<td><a href="../jsZenGarden/ReservedWords/Delete.cfm">delete</a></td>
			<td>delete myObject.X</td>
			<td>Inherited objects' values shines thru</td>
		</tr>
		<tr>
			<td>D</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Object</td>
			<td>delete</td>
			<td>delete myObject[X];</td>
			<td>Use dot notation instead</td>
		</tr>
		<tr>
			<td>D</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Array</td>
			<td>delete</td>
			<td>delete myArray[X];</td>
			<td>myArray.splice(X,1)<br>
			-OR-<br>
			myArray[X] = 0;					</td>
		</tr>
		<tr>
			<td>D</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td><a href="Delete.cfm">delete</a></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>D</td>
			<td>Operator</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td class="center">delete</td>
			<td>&nbsp;</td>
			<td>return data type</td>
		</tr>
		<tr>
			<td>D</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>delete</td>
			<td>myArray[number]</td>
			<td>Use myArray.splice() instead</td>
			<td>Removes the element, but leaves a hole in the numbering.</td>
		</tr>
		<tr>
			<td>D</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>&nbsp;</td>
			<td>detatchEvent</td>
			<td>&nbsp;</td>
			<td>node.detachEvent(&quot;onclick&quot;,myFunction);</td>
		</tr>
		
		<tr>
			<td>D</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td><a href="../jsZenGarden/ReservedWords/Do.cfm">do</a></td>
			<td>do {} while();</td>
			<td>Tests condition after looping begins</td>
		</tr>
		<tr>
			<td>D</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>2.7</td>
			<td>stmt</td>
			<td>do</td>
			<td>&nbsp;</td>
			<td>do {} while (true);</td>
		</tr>
		<tr>
			<td>D</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>document</td>
			<td>document</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>D</td>
			<td>jQuery</td>
			<td>&nbsp;</td>
			<td>14.2</td>
			<td>document</td>
			<td>documentElement</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>D</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>document</td>
			<td>documentElement</td>
			<td>var rootElement = document.documentElement; <br>
				var firstTier = rootElement.childNodes; <br>
				for (var i = 0; i &lt; firstTier.length; i++) {}</td>
			<td>$('html')</td>
		</tr>
		<tr>
			<td>D</td>
			<td>tag</td>
			<td>&nbsp;</td>
			<td>Intro</td>
			<td>html</td>
			<td>doctype</td>
			<td>&lt;!doctype html&gt;</td>
			<td>HTML5</td>
		</tr>
		<tr>
			<td>D</td>
			<td>ECMAScript&nbsp;3</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>double</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>D</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>double</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>E</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>e</td>
			<td>1e2 === 100</td>
			<td>Exponential 1 times 10 ^ 2</td>
		</tr>
		<tr>
			<td>E</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>E</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>E</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>Math</td>
			<td>E</td>
			<td>Euler's constant </td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>E</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td><a href="../jsZenGarden/ReservedWords/Each.cfm">each</a></td>
			<td>for each(var X in myObj)</td>
			<td>limited browser support</td>
		</tr>
		<tr>
			<td>E</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td><a href="Each.cfm">each</a></td>
			<td>for each(var X in myObj)</td>
			<td>limited browser support</td>
		</tr>
		<tr>
			<td>E</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td>else</td>
			<td>if () { } else if () {} else {}</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>E</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td>else</td>
			<td>if () { } else if () {} else {}</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>E</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>stmt</td>
			<td>else</td>
			<td>else {}</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>E</td>
			<td>Collection</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>document</td>
			<td>embeds</td>
			<td>Netscape only</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>E</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>encodeURI</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>E</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>

			<td>&nbsp;</td>
			<td>encodeURIComponent</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>E</td>
			<td>ECMAScript&nbsp;5</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>enum</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>E</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>enum</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>E</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Error</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>E</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>2.6</td>
			<td>console</td>
			<td>error</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>E</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>method</td>
			<td>eval</td>
			<td>eval(X);</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>E</td>
			<td>Function</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>String</td>
			<td>eval</td>
			<td>eval(string)</td>
			<td>The most misused feature of JavaScript</td>
		</tr>
		<tr>
			<td>E</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>eval</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>E</td>
			<td>Strict mode</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>eval</td>
			<td>&nbsp;</td>
			<td>Not allowed as variable, function or parameter</td>
		</tr>
		<tr>
			<td>E</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>EvalError</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>E</td>
			<td>Event handler</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Event</td>
			<td>event</td>
			<td>function(e) {<br>
				&nbsp;&nbsp;&nbsp;e = e || event;<br>
				&nbsp;&nbsp;&nbsp;var target = e.target || e.srcElement;<br>
				}</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>E</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>every</td>
			<td>myArray.every(func,thisArg)</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>E</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Math</td>
			<td>exp</td>
			<td>Base of natural logarithm</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>E</td>
			<td>ECMAScript&nbsp;5</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>export</td>
			<td><a href="http://www.mozilla.org/projects/security/components/signed-scripts.html">Signed scripts</a></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>E</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>export</td>
			<td><a href="http://www.mozilla.org/projects/security/components/signed-scripts.html">Signed scripts</a></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>E</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>extends</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>E</td>
			<td>ECMAScript&nbsp;5</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>extends</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td>false</td>
			<td>0, NaN, '', false, null, undefined</td>
			<td><a href="http://oreilly.com/javascript/excerpts/javascript-good-parts/awful-parts.html#the_many_falsy_values_of_javascript">undefined and NaN are global variables</a></td>
		</tr>
		<tr>
			<td>F</td>
			<td>Boolean Value</td>
			<td>&nbsp;</td>
			<td>Intro</td>
			<td>Boolean</td>
			<td>false</td>
			<td>falsey values are:</td>
			<td>false<br>
				null<br>
				<em>undefined</em><br>
				""<br>
				0<br>
				NaN</td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>falsey</td>
			<td>0, NaN, '', false, null, undefined</td>
			<td><a href="http://oreilly.com/javascript/excerpts/javascript-good-parts/awful-parts.html#the_many_falsy_values_of_javascript">undefined and NaN are global variables</a></td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>2.3</td>
			<td>&nbsp;</td>
			<td>false</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>document</td>
			<td>fgColor</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>filter</td>
			<td>myArray.filter(func,thisArg)</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>ECMAScript&nbsp;3</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>final</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>final</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td>finally</td>
			<td> try {}
				catch (){}
				finally {} </td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>finally</td>
			<td> try {}
				catch (){}
				finally {} </td>
			<td>Allow errors while developing</td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>document</td>
			<td>firstChild</td>
			<td>&nbsp;</td>
			<td>$(':first',X)</td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>tag</td>
			<td>firstChild</td>
			<td>var myVariable = myNode.firstChild;</td>
			<td>$(':first')</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>css</td>
			<td>String</td>
			<td>fixed</td>
			<td>&lt;TT&gt;&lt;/TT&gt;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>ECMAScript&nbsp;3</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>float</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>float</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>Math</td>
			<td>floor</td>
			<td>the greatest integer less than or equal to X</td>
			<td>Careful with negatives</td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>14.1</td>
			<td>Math</td>
			<td>floor</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Input Event</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>node</td>
			<td>focus</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>css</td>
			<td>String</td>
			<td>fontcolor</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>css</td>
			<td>String</td>
			<td>fontsize</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>css</td>
			<td>style</td>
			<td>fontSize</td>
			<td>&nbsp;</td>
			<td>css font-size</td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>9.1</td>
			<td>&nbsp;</td>
			<td>fontWeight</td>
			<td>&nbsp;</td>
			<td>css</td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>2.7</td>
			<td>stmt</td>
			<td>for</td>
			<td>for (var i=0,ii=arr.length;i&lt;ii;i++) {}</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td><a href="../jsZenGarden/ReservedWords/For.cfm">for</a></td>
			<td><br>
				for (var i=0,ii=myArray.length; i&lt;ii; i++) {<br>
				&nbsp;&nbsp;&nbsp;myArray[i] = 0;<br>
			}</td>
			<td>var i, ii=myArray.length;<br>
				for (i=0; i&lt;ii; i++) {<br>
				&nbsp;&nbsp;&nbsp;myArray[i] = 0;<br>
				}</td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td><a href="For.cfm">for</a></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Array</td>
			<td>for in</td>
			<td>&nbsp;</td>
			<td>unsorted</td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>for</td>
			<td>looping (continue stmt)</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>for-in</td>
			<td>loop through objects</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>forEach</td>
			<td>myArray.forEach(func,thisArg)</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>document</td>
			<td>form</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>forms</td>
			<td>documents.forms.myForm</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Collection</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>document</td>
			<td>forms</td>
			<td>Netscape only</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Collection</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>document</td>
			<td>frames</td>
			<td>Netscape only</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>String</td>
			<td>fromCharCode</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>function</td>
			<td>(function() {})</td>
			<td>Anonymous function</td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td>function</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>function</td>
			<td>var myFunction = function(X) {};</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Type</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Function</td>
			<td>Is function a type?</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Scoping</td>
			<td>&nbsp;</td>
			<td>function</td>
			<td>&nbsp;</td>
			<td><a href="Scoping/FunctionDefinition.cfm">Example</a></td>
			<td>Function Definition</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>Function</td>
			<td>call a function</td>
			<td>myFunction(myArguments)</td>
			<td>function form<br>
					<i>this</i> is the global object </td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Function</td>
			<td>call a function</td>
			<td>myObject.myMethod(myArguments)</td>
			<td>Method form<br>
					<i>this</i> is the object itself </td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Function</td>
			<td>call a function</td>
			<td>myObject['myMethod'](myArguments)</td>
			<td>Method form <i>this</i> is the object itself </td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>Function</td>
			<td>call a function</td>
			<td>new myFunction(myArguments)</td>
			<td>Constructor form<br>
					<i>this</i> is the new object being constructed </td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>Function</td>
			<td>call a function</td>
			<td>myFunction.apply(myObject,myArguments)</td>
			<td>Apply form</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>hasOwnProperty</td>
			<td>if (myObject.hasOwnProperty(myMember)) {}</td>
			<td>properties up the chain shine through</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>Objects</td>
			<td>for</td>
			<td>for (var myMember in myObject) {<br>
			&nbsp;&nbsp;&nbsp;if (myObject.hasOwnProperty(myMember)) {<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;currentValue = myObject(myMember);<br>
			&nbsp;&nbsp;&nbsp;}<br>
			}					</td>
			<td>Filter out methods the object has inherited</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td>for </td>
			<td>var $tr = $('tr');<br>
			for (var X, i=-1; X=$tr[++i];) {}</td>
			<td>bare metal loop. Cookbook, pg. 112<br>
			Use only if $tr has no false elements</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>window</td>
			<td>frame</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Object</td>
			<td>freeze</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Function</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>function</td>
			<td>function myFunction(myParameters) {}</td>
			<td>var myFunction = function(myParameters)</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Intro</td>
			<td>&nbsp;</td>
			<td>function</td>
			<td>var myFunction = function(myParameters) {}</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>F</td>
			<td>Constructor</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Function</td>
			<td>function</td>
			<td>new Function(parameters, body)</td>
			<td>Closely related to eval.</td>
		</tr>
		<tr>
			<td>F</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>function</td>
			<td>defining with an assignment operator</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>Reserved?</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>get</td>
			<td>getters and setters</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>get</td>
			<td>getters and setters</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>jQuery</td>
			<td>&nbsp;</td>
			<td>13.3</td>
			<td>&nbsp;</td>
			<td>GET</td>
			<td>myRequest.open(&quot;GET&quot;,'Pgm.cfm',true);</td>
			<td>$.Ajax</td>
		</tr>
		<tr>
			<td>G</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>getAttribute</td>
			<td>&nbsp;</td>
			<td>attr</td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>element</td>
			<td>getAttribute</td>
			<td>if (myAnchor.getAttribute('href')) {<br>
				&nbsp;&nbsp;&nbsp;myAnchor.setAttribute('title',myUrl); <br>
				}</td>
			<td><p>if (myAnchor.href) {<br>
				&nbsp;&nbsp;&nbsp;myAnchor.title = myUrl;<br>
				}</p></td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>getDate</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>getDay</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>document</td>
			<td>getElementById</td>
			<td>var X = document.getElementById('myID');</td>
			<td>$('#X)[0] or $('#X).get(0)</td>
		</tr>
		<tr>
			<td>G</td>
			<td>jQuery</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>docment</td>
			<td>getElementById</td>
			<td>&nbsp;</td>
			<td>#</td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>document</td>
			<td>getElementsByName()</td>
			<td>var x=document.getElementsByName(&quot;x&quot;);</td>
			<td>$('*[name=x]')</td>
		</tr>
		<tr>
			<td>G</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>document</td>
			<td>getElementsByTagName</td>
			<td>var A = document.getElementsByTagName('a');</td>
			<td>var $A = $('a');</td>
		</tr>
		<tr>
			<td>G</td>
			<td>jQuery</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>document</td>
			<td>getElementsByTagName</td>
			<td>&nbsp;</td>
			<td>TagName</td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>getFullYear</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>getHours</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>getMilliseconds</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>getMinutes</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>getMonth</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td height="27">G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Object</td>
			<td>getOwnPropertyDescriptior</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Object</td>
			<td>getOwnPropertyNames</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Object</td>
			<td>getPrototypeOf</td>
			<td>&nbsp;</td>
			<td><a href="http://msdn.microsoft.com/en-us/scriptjunkie/ff852808">Prototypes and Inheritance in JavaScript</a></td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>getSeconds</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>getTime</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>getTimezoneOffset</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>getUTCDate</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>getUTCDay</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>getUTCFullYear</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>getUTCHours</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>getUTCMilliseconds</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>getUTCMinutes</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>getUTCMonth</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>getUTCSeconds</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>getVarDate</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>getYear</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>ECMAScript&nbsp;3</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>goto</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>G</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>goto</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>H</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>location</td>
			<td>hash</td>
			<td>if (location.hash.length &gt; 1) {}</td>
			<td>The fragment identifier portion of the url</td>
		</tr>
		<tr>
			<td>H</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>history</td>
			<td>history</td>
			<td>var X = window.history;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>H</td>
			<td>Terminology</td>
			<td>&nbsp;</td>
			<td>Pit</td>
			<td>&nbsp;</td>
			<td><a href="Pit/001/001.cfm">hoisting</a></td>
			<td><p>&nbsp;</p></td>
			<td>Declare all variables at the top of each function</td>
		</tr>
		<tr>
			<td>H</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>host</td>
			<td>$('a').attr('target',function() {<br>
				&nbsp;&nbsp;&nbsp;if (this.host == location.host) return '_self'<br>
				&nbsp;&nbsp;&nbsp;else return '_blank'<br>
				});</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>H</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>htmlFor</td>
			<td colspan="2">document.getElementById(&quot;labelID&quot;).htmlFor = value;<br>
				document.all.labelID.htmlFor = value // IE only </td>
		</tr>
		<tr>
			<td>H</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>location</td>
			<td>href</td>
			<td>var X = window.location.href;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>document</td>
			<td>ids</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Intro</td>
			<td>&nbsp;</td>
			<td>if</td>
			<td>if () {} else if () {} else {}</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>if</td>
			<td>if () stmt else stmt;</td>
			<td>if () {} else {}</td>
		</tr>
		<tr>
			<td>I</td>
			<td>Statement</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td>if</td>
			<td>if () { } else if () {} else {}</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>if ()</td>
			<td>if () {}</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>Collection</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>document</td>
			<td>images</td>
			<td>Netscape only</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>implements</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>ECMAScript&nbsp;3</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>implements</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>ECMAScript&nbsp;5</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>import</td>
			<td><a href="http://www.mozilla.org/projects/security/components/signed-scripts.html">Signed Scripts</a></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>import</td>
			<td><a href="http://www.mozilla.org/projects/security/components/signed-scripts.html">Signed Scripts</a></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td><a href="In.cfm">in</a></td>
			<td>for (var X in myObj)</td>
			<td>Not to be confused with <a href="Each.cfm">for each</a></td>
		</tr>
		<tr>
			<td>I</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td><a href="inOperator.cfm">in</a></td>
			<td>operator</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td><a href="../jsZenGarden/ReservedWords/In.cfm">in</a></td>
			<td>for (var X in myObj)</td>
			<td>Not to be confused with <a href="Each.cfm">for each</a><br>
			jQuery Cookbook Page 114</td>
		</tr>
		<tr>
			<td>I</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td><a href="../jsZenGarden/ReservedWords/inOperator.cfm">in</a></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>String</td>
			<td>indexOf</td>
			<td>strVariable.indexOf(substring, startindex)</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>String</td>
			<td>indexOf</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>indexOf</td>
			<td>myArray.indexOf(searchElement, fromIndex)</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>13.1</td>
			<td>&nbsp;</td>
			<td>indexOf()</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Infinity</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>Special Value</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td>Infinity</td>
			<td>&nbsp;</td>
			<td>1.79769313486231570e+308</td>
		</tr>
		<tr>
			<td>I</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>2.6</td>
			<td>console</td>
			<td>info</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>jQuery</td>
			<td>&nbsp;</td>
			<td>14.2</td>
			<td>window</td>
			<td>innerHeight</td>
			<td>if (window.innerHeight) {}</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>innerHTML</td>
			<td>&nbsp;</td>
			<td>html</td>
		</tr>
		<tr>
			<td>I</td>
			<td>property</td>
			<td>&nbsp;</td>
			<td>Intro</td>
			<td>&nbsp;</td>
			<td>innerHTML</td>
			<td>td.innerHTML = 'x';</td>
			<td>$('td').html('is shorter');<br>
				$('td')[0].innerHTML = 'is faster';</td>
		</tr>
		<tr>
			<td>I</td>
			<td>jQuery</td>
			<td>&nbsp;</td>
			<td>14.2</td>
			<td>window</td>
			<td>innerWidth</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>insertBefore</td>
			<td>&nbsp;</td>
			<td>insertBefore</td>
		</tr>
		<tr>
			<td>I</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>node</td>
			<td>insertBefore</td>
			<td>node.insertBefore(myTD, myPrevTD);</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td><a href="../jsZenGarden/ReservedWords/InstanceOf.cfm">instanceof</a></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td><a href="InstanceOf.cfm">instanceof</a></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>Operator</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td class="center">instanceof</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>int</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>ECMAScript&nbsp;3</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>int</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>ECMAScript&nbsp;3</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>interface</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>interface</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Array</td>
			<td>isArray</td>
			<td>function isArray(X){ <br>
				&nbsp;&nbsp;	return typeof(X)=='object' &amp;&amp; (X instanceof Array);   } </td>
			<td>Will be added to the language in the future</td>
		</tr>
		<tr>
			<td>I</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Object</td>
			<td>isExtensible</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>isFinite</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Object</td>
			<td>isFrozen</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>Function</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>Numbers</td>
			<td>isNaN</td>
			<td>function INT(str) {<br>
				&nbsp;&nbsp;&nbsp;var i = parseInt(str,10);<br>
				&nbsp;&nbsp;&nbsp;return isNaN(i) ? 0 : i; <br>
				}<br></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>isNAN</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>14.1</td>
			<td>&nbsp;</td>
			<td>isNaN</td>
			<td>if (isNaN(X)) {};</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Object</td>
			<td>isSealed</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>I</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>css</td>
			<td>String</td>
			<td>italics</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>J</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>JSON</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>J</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Arrays</td>
			<td><a href="../jsZenGarden/Methods/Array/Join.cfm">join</a></td>
			<td>myStr = myArray.join(',');</td>
			<td>Makes a string from an array</td>
		</tr>
		<tr>
			<td>K</td>
			<td>Input Event</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>node</td>
			<td>keydown</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>K</td>
			<td>Input Event</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>node</td>
			<td>keypress</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>K</td>
			<td>Input Event</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>node</td>
			<td>keyup</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>K</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Object</td>
			<td>keys</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>L</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>label</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>L</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>tag</td>
			<td>lastChild</td>
			<td>var myVariable = myNode.lastChild;</td>
			<td>$(':last')</td>
		</tr>
		<tr>
			<td>L</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>String</td>
			<td>lastIndexOf</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>L</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>lastIndexOf</td>
			<td>myArray.lastIndexOf(searchElement,fromIndex)</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>L</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>String</td>
			<td>lastIndexOf</td>
			<td>strVariable.lastIndexOf(substring, startindex)</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>L</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>document</td>
			<td>layers</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>L</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>left</td>
			<td>&nbsp;</td>
			<td>css</td>
		</tr>
		<tr>
			<td>L</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>length</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>L</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>String Object</td>
			<td>length</td>
			<td>X.length</td>
			<td># of 16 bit characters</td>
		</tr>
		<tr>
			<td>L</td>
			<td>Member</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>Array</td>
			<td>length</td>
			<td>myArray[myArray.length] = 'new element'</td>
			<td>Arrays are 0 based, so the last item is at myArray.length - 1</td>
		</tr>
		<tr>
			<td>L</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>arguments</td>
			<td>length</td>
			<td>arguments.length</td>
			<td>The number of arguments that were passed</td>
		</tr>
		<tr>
			<td>L</td>
			<td>Strict Mode</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>let</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>L</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>String</td>
			<td>link</td>
			<td>&nbsp;</td>
			<td>$('a').attr('href')</td>
		</tr>
		<tr>
			<td>L</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>document</td>
			<td>link</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>L</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>css</td>
			<td>style</td>
			<td>listStyleType</td>
			<td>&nbsp;</td>
			<td>css list-style-type</td>
		</tr>
		
		<tr>
			<td>L</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>Math</td>
			<td>LN2</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>L</td>
			<td height="29">Property</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>Math</td>
			<td>LN10</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>L</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>Math</td>
			<td>Log2E</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>L</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>Math</td>
			<td>Log10E</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>L</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>window</td>
			<td>location</td>
			<td>window.location.href = $('a').attr('href');</td>
			<td>Follow the hyperlink </td>
		</tr>
		<tr>
			<td>L</td>
			<td> Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Global</td>
			<td>location</td>
			<td>if (location.hash.length &gt; 1) {}</td>
			<td>information about the url</td>
		</tr>
		<tr>
			<td>L</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>locationbar</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>L</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Intro</td>
			<td>console</td>
			<td><a href="../jsZenGarden/console/005/005.cfm">log</a></td>
			<td>window.log = function(){<br>
				&nbsp;&nbsp;&nbsp;if(this.console){<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;console.log(Array.prototype.slice.call(arguments));<br>
				&nbsp;&nbsp;&nbsp;&nbsp;};<br>
				};</td>
			<td>Internet Explorer doesn't have console.log, so do your debugging in Firefox with Firebug.</td>
		</tr>
		<tr>
			<td>L</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Math</td>
			<td>log</td>
			<td>logarithm</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>L</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>2.6</td>
			<td>console</td>
			<td>log</td>
			<td>console.log</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>L</td>
			<td>ECMAScript&nbsp;3</td>
			<td>&nbsp;</td>
			<td> No</td>
			<td>&nbsp;</td>
			<td>long</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>L</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>long</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>M</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>map</td>
			<td>myArray.map(func,thisArg)</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>M</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>map</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>M</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>String</td>
			<td>match</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>M</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>String</td>
			<td>match</td>
			<td>Regular Expression</td>
			<td>Use with caution</td>
		</tr>
		<tr>
			<td>M</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Math</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>M</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Math</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>M</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Math</td>
			<td>max</td>
			<td>greater of X,Y</td>
			<td>if</td>
		</tr>
		<tr>
			<td>M</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Number</td>
			<td>MAX_VALUE</td>
			<td>largest number representable</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>M</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Math</td>
			<td>min</td>
			<td>lesser of X,Y</td>
			<td>if</td>
		</tr>
		<tr>
			<td>M</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Number</td>
			<td>MIN_VALUE</td>
			<td>the number closest to zero</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>M</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>menubar</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>M</td>
			<td>Event</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>node</td>
			<td>mousedown</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>M</td>
			<td>Event</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>node</td>
			<td>mousemove</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>M</td>
			<td>Event</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>node</td>
			<td>mouseout</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>M</td>
			<td>Event</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>node</td>
			<td>mouseover</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>M</td>
			<td>Event</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>node</td>
			<td>mouseup</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>N</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>NaN</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>N</td>
			<td>Special Number</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>NaN</td>
			<td>NaN === NaN is false<br>
				NaN !== NaN is true</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>N</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Number</td>
			<td>NaN</td>
			<td>Not a Number</td>
			<td>See the isNaN function</td>
		</tr>
		<tr>
			<td>N</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>NaN</td>
			<td>Not a Number</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>N</td>
			<td>ECMAScript&nbsp;3</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>native</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>N</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>native</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>N</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Negative Zero</td>
			<td>-1/Infinity</td>
			<td>So close to zero that it equals 0, but on the minus side of the equation.</td>
		</tr>
		<tr>
			<td>N</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Number</td>
			<td>NEGATIVE_INFINITY</td>
			<td>less than -X.MAX_VALUE</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>N</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td>new</td>
			<td>&nbsp;</td>
			<td>var myArr = new Array(1,2);</td>
		</tr>
		<tr>
			<td>N</td>
			<td>Array literal</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>new</td>
			<td>var myArray = new Array();</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>N</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td>new</td>
			<td>var myArr = new Array(1,2);</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>N</td>
			<td>Object declaration</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Objects</td>
			<td>new Object</td>
			<td>var myObject = new Object();</td>
			<td>{}</td>
		</tr>
		<tr>
			<td>N</td>
			<td>mechanism</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>operator</td>
			<td>new</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>N</td>
			<td>Operator</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td class="center">new</td>
			<td>object creation</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>N</td>
			<td>function</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>new myFunction(parameters, {})</td>
			<td>not used</td>
		</tr>
		<tr>
			<td>N</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>13.4</td>
			<td>&nbsp;</td>
			<td>new</td>
			<td>function Player(X) {<br>
				this.name = X;<br>
				}<br>
				var fred = new Player('fred');</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>N</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>tag</td>
			<td>nextSibling</td>
			<td>var myVariable = myNode.nextSibling;</td>
			<td>$(':next')</td>
		</tr>
		<tr>
			<td>N</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>node</td>
			<td>node[]</td>
			<td>node[&quot;on&quot; + type] = f;</td>
			<td>Classic - passes an event parameter</td>
		</tr>
		<tr>
			<td>N</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td><a href="../jsZenGarden/Properties/DOM/nodeName.cfm">nodeName</a></td>
			<td>nodeName</td>
			<td>&nbsp;</td>
			<td>target.nodeName</td>
		</tr>
		<tr>
			<td>N</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>node</td>
			<td>nodeType</td>
			<td>if (myNode.nodeType === 1) {}</td>
			<td>ELEMENT_NODE       = 1; <br>
				ATTRIBUTE_NODE     = 2; <br>
				TEXT_NODE          = 3; <br>
				CDATA_SECTION_NODE = 4; <br>
				ENTITY_REFERENCE_NODE = 5; <br>
				ENTITY_NODE        = 6; <br>
				PROCESSING_INSTRUCTION_NODE = 7; <br>
				COMMENT_NODE       = 8; <br>
				DOCUMENT_NODE      = 9; <br>
				DOCUMENT_TYPE_NODE = 10; <br>
				DOCUMENT_FRAGMENT_NODE = 11; <br>
				NOTATION_NODE      = 12;</td>
		</tr>
		<tr>
			<td>N</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>document</td>
			<td>nodeValue</td>
			<td>&nbsp;</td>
			<td>$(X).val('New Value')</td>
		</tr>
		<tr>
			<td>N</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>nodeType</td>
			<td>1=Elements, 2=Attributes, 3=Text</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>N</td>
			<td>tag</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>html</td>
			<td>noscript</td>
			<td>&lt;noscript&gt;JavaScript disabled&lt;/noscript&gt;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>N</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>now()</td>
			<td>milliseconds since the epoch</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>N</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td>null</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>N</td>
			<td>Value</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>null</td>
			<td>var X = null;</td>
			<td>A value that isn't anything</td>
		</tr>
		<tr>
			<td>N</td>
			<td>Not sure</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>null</td>
			<td>var myNull = null; log(typeof myNull);</td>
			<td><a href="http://stackoverflow.com/questions/2518276/javascript-types">object</a></td>
		</tr>
		<tr>
			<td>N</td>
			<td>Value</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>null</td>
			<td>var X = null;</td>
			<td> X is an <em>undefined</em> object.</td>
		</tr>
		<tr>
			<td>N</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>null</td>
			<td>var myNull = null; log(typeof myNull)</td>
			<td><a href="http://stackoverflow.com/questions/2518276/javascript-types">object</a></td>
		</tr>
		<tr>
			<td>N</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>data type</td>
			<td>null</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>N</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>null</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>N</td>
			<td>Data Type</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Null</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>N</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>13.3</td>
			<td>&nbsp;</td>
			<td>null</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>N</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Number</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>N</td>
			<td>Function</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Number</td>
			<td>Number(X)</td>
			<td>NaN if Not a Number</td>
		</tr>
		<tr>
			<td>N</td>
			<td>Type wrapper</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>Number</td>
			<td>new Number()</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>N</td>
			<td>Type</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>Number</td>
			<td>new Number()</td>
			<td>Loose typing</td>
		</tr>
		<tr>
			<td>N</td>
			<td>Data Type</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Number</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>It's implied</td>
		</tr>
		<tr>
			<td>O</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Object</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>O</td>
			<td>Type</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Object</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>O</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>document</td>
			<td>object</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>O</td>
			<td>Data Type</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Object</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>O</td>
			<td>Object declaration</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Objects</td>
			<td>Object.create</td>
			<td><p>if (typeof Object.create() !== 'function') {<br>
				&nbsp;&nbsp;&nbsp;Object.create = function(o)	{<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;function F() {}<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F.prototype = o;<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return new F();<br>
				&nbsp;&nbsp;&nbsp;}<br>
				}</p>
				<p>myObj = Object.create(oldObject);</p></td>
			<td>Will be in next edition the language</td>
		</tr>
		<tr>
			<td>O</td>
			<td>Object declaration</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Objects</td>
			<td>Object.create</td>
			<td> var myObject=Object.create(X.Prototype);</td>
			<td>{}</td>
		</tr>
		<tr>
			<td>O</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Object</td>
			<td>&nbsp;</td>
			<td>{}</td>
		</tr>
		<tr>
			<td>O</td>
			<td>Value</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td>Objects</td>
			<td>&nbsp;</td>
			<td>An  collection of name:value pairs.</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>offline</td>
			<td><a href="Window/offline.cfm">Example</a></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>O</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>6.3</td>
			<td>&nbsp;</td>
			<td>onblur</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>O</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>8.1</td>
			<td>&nbsp;</td>
			<td>onchange</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>O</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>6.2</td>
			<td>&nbsp;</td>
			<td>onclick</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>O</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>13.1</td>
			<td>html</td>
			<td>onclick</td>
			<td>&lt;a href=&quot;noscript.htm&quot; <br>
				onclick=&quot;myFunction(); return false;&quot;&gt;JavaScript?&lt;/a&gt;</td>
			<td>$('a').click() {};</td>
		</tr>
		<tr>
			<td>O</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>event</td>
			<td>onClick</td>
			<td>&lt;a href=&quot;#&quot; onclick=&quot;alert('click')&quot;&gt;click here&lt;/a&gt;</td>
			<td>&lt;a href=&quot;#&quot; id=&quot;clickID&quot;&gt;click here&lt;/a&gt;<br>
				$('#clickID').click(function() {<br>
				&nbsp;&nbsp;&nbsp;alert('click');<br>
				}</td>
		</tr>
		<tr>
			<td>O</td>
			<td>Worker</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>self</td>
			<td>onconnect</td>
			<td>&nbsp;</td>
			<td>self.onconnect = myFunction;</td>
		</tr>
		<tr>
			<td>O</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>6.3</td>
			<td>&nbsp;</td>
			<td>onfocus</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>O</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>8.1</td>
			<td>&nbsp;</td>
			<td>onkeydown</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>O</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>8.1</td>
			<td>&nbsp;</td>
			<td>onkeypress</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>O</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>8.1</td>
			<td>&nbsp;</td>
			<td>onkeyup</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>O</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>6.2</td>
			<td>window</td>
			<td>onload</td>
			<td>window.onload = function() {}</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>O</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>event</td>
			<td>onLoad</td>
			<td>&nbsp;</td>
			<td>$(function() {});</td>
		</tr>
		<tr>
			<td>O</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>event</td>
			<td>onLoad</td>
			<td>&nbsp;</td>
			<td>$(window).load(function($) {});</td>
		</tr>
		<tr>
			<td>O</td>
			<td>window</td>
			<td>&nbsp;</td>
			<td>12.1</td>
			<td>Worker</td>
			<td>onmessage</td>
			<td>&nbsp;</td>
			<td>worker.onmessage=function(e) {}</td>
		</tr>
		<tr>
			<td>O</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>6.1</td>
			<td>&nbsp;</td>
			<td>onmouseover</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>O</td>
			<td>jQuery</td>
			<td>&nbsp;</td>
			<td>13.3</td>
			<td>&nbsp;</td>
			<td>onreadystatechange</td>
			<td>myRequest.onreadystatechange = function() {}<br>
				gets called multiple times</td>
			<td>$.Ajax</td>
		</tr>
		<tr>
			<td>O</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>14.2</td>
			<td>window</td>
			<td>onresize</td>
			<td>window.onresize = function() {};</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>O</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>8.1</td>
			<td>&nbsp;</td>
			<td>onsubmit</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>O</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>ontouchend</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>O</td>
			<td>&nbsp;</td>
			<td>iOS 6.5</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>ontouchmove</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>O</td>
			<td>&nbsp;</td>
			<td>iOS 6.5</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>ontouchstart</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>O</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>event</td>
			<td>onUnload</td>
			<td>&nbsp;</td>
			<td>$(x).unload</td>
		</tr>
		<tr>
			<td>O</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>13.3</td>
			<td>&nbsp;</td>
			<td>open</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>O</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>8.1</td>
			<td>&nbsp;</td>
			<td>options</td>
			<td>mySelect.options[x].selected</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>orientation</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td><a href="http://www.udemy.com/lectures/part-10-javascript-utilities-58923.html">orientationchange</a></td>
			<td>&nbsp;</td>
			<td>$(window).bind('orientationchange',</td>
		</tr>
		<tr>
			<td>P</td>
			<td>ECMAScript&nbsp;3</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>package</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>package</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>window</td>
			<td>parent</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>tag</td>
			<td>parentNode</td>
			<td>var myVariable = myNode.parentNode;</td>
			<td>$(':parent')</td>
		</tr>
		<tr>
			<td>P</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>Date</td>
			<td>parse</td>
			<td>milliseconds since 1/1/1970</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>parseFloat</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>Global</td>
			<td><a href="Methods/Global/parseFloat.cfm">parseFloat</a></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>parseInt</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>Function</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>parseInt</td>
			<td>parseInt(X,10)</td>
			<td><abbr title="Uses octal if 1st digit=0">Always explicitly use radix(10)</abbr></td>
		</tr>
		<tr>
			<td>P</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>Global</td>
			<td><a href="Methods/Global/parseInt.cfm">parseInt</a></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>navigator</td>
			<td>personalbar</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Math</td>
			<td>PI</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>PI</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>Math</td>
			<td>PI</td>
			<td>the ratio of the circumference the diameter</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>document</td>
			<td>plugin</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>Collection</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>document</td>
			<td>plugins</td>
			<td>Netscape only</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Arrays</td>
			<td><a href="../jsZenGarden/Methods/Array/pop.cfm">pop</a></td>
			<td>pop can be implemented like this:</td>
			<td>Array.method('pop', function() {<br>
				return this.splice(this.length - 1, 1)[0];);</td>
		</tr>
		<tr>
			<td>P</td>
			<td>Worker</td>
			<td>&nbsp;</td>
			<td><a href="http://www.lynda.com/tutorials/85868-2.html">3.1</a></td>
			<td>worker</td>
			<td>port</td>
			<td>&nbsp;</td>
			<td>worker.port.property</td>
		</tr>
		<tr>
			<td>P</td>
			<td>Worker</td>
			<td>&nbsp;</td>
			<td><a href="http://www.lynda.com/tutorials/85868-2.html">3.1</a></td>
			<td>worker</td>
			<td>ports</td>
			<td>&nbsp;</td>
			<td>worker.ports[0]</td>
		</tr>
		<tr>
			<td>P</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>position</td>
			<td>&nbsp;</td>
			<td>css</td>
		</tr>
		<tr>
			<td>P</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Number</td>
			<td>POSITIVE_INFINITY</td>
			<td>greater than X.MAX_VALUE</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>window</td>
			<td>&nbsp;</td>
			<td>12.1</td>
			<td>Worker</td>
			<td>postmessage</td>
			<td><a href="Worker/postMessage.cfm">Example</a></td>
			<td>worker.postmessage(&quot;X&quot;);</td>
		</tr>
		<tr>
			<td>P</td>
			<td>Worker</td>
			<td>&nbsp;</td>
			<td><a href="http://www.lynda.com/tutorials/85868-2.html">3.3</a></td>
			<td>&nbsp;</td>
			<td>postMessage</td>
			<td>&nbsp;</td>
			<td>myPort.postMessage({status:myPort.status});</td>
		</tr>
		<tr>
			<td>P</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Math</td>
			<td>pow</td>
			<td>X ^ Y</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>method</td>
			<td>&nbsp;</td>
			<td>Intro</td>
			<td>event</td>
			<td>preventDefault</td>
			<td>$('a').click(function(myEvent) {<br>
				&nbsp;&nbsp;&nbsp;myEvent.preventDefault();<br>
				}</td>
			<td>See also return false, returnValue, and <br>
				stopPropagation()</td>
		</tr>
		<tr>
			<td>P</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Object</td>
			<td>preventExtensions</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>tag</td>
			<td>previousSibling</td>
			<td>var myVariable = myNode.previousSibling;</td>
			<td>$(':previous')</td>
		</tr>
		<tr>
			<td>P</td>
			<td>ECMAScript&nbsp;3</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>private</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>private</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>protected</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>ECMAScript&nbsp;3</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>protected</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>Augmenting<br>
				Types</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>Object</td>
			<td>prototype</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>Augmenting<br>
				Types</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Array</td>
			<td>prototype</td>
			<td>Don't use arrays as prototypes.<br>
				The new object will not have .length</td>
			<td><p>But you can augment an array by a assigning a method to it<br>
				or 
				all arrays by assigning methods to Array.prototype</p></td>
		</tr>
		<tr>
			<td>P</td>
			<td>Augmenting<br>
				Types</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>Function</td>
			<td>prototype</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>Augmenting<br>
				Types</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>Number</td>
			<td>prototype</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>Augmenting<br>
				Types</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>String</td>
			<td>prototype</td>
			<td><p>if typeof String.prototype.trim !== 'function') {<br>
				String.prototype.trim = function() {<br>
				return this.replace(/^\s*(\S*(\s+\S+)*)\s*$/,&quot;$1&quot;);<br>
				};}</p></td>
			<td>myString.trim</td>
		</tr>
		<tr>
			<td>P</td>
			<td>Augmenting<br>
				Types</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>Boolean</td>
			<td>prototype</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>mechanism</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>member of functions</td>
			<td>prototype</td>
			<td> Function.prototype.method = function(name, handler <br>
				){<br>
				&nbsp;&nbsp;&nbsp; this.prototype[name] = handler;<br>
				&nbsp;&nbsp;&nbsp; return(this); <br>
				};</td>
			<td>Crockford's method method</td>
		</tr>
		<tr>
			<td>P</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>13.4</td>
			<td>&nbsp;</td>
			<td>prototype</td>
			<td>Player.prototype.myMethod = function() {}</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>ECMAScript&nbsp;3</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>public</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>public</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>P</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Arrays</td>
			<td>push</td>
			<td>push can be implemented like this:</td>
			<td>Array.method('push', function() {<br>
				&nbsp;&nbsp;&nbsp;this.splice.apply(<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;this,[this.length, 0],<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;concat(Array.prototype.slice.apply(arguments))<br>
				&nbsp;&nbsp;&nbsp;				);<br>
				&nbsp;&nbsp;&nbsp;return this.length;<br>
				});</td>
		</tr>
		<tr>
			<td>Q</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>R</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>Math</td>
			<td>random</td>
			<td>between 0 and 1</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>R</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Random</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>R</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>RangeError</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>R</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>13.3</td>
			<td>&nbsp;</td>
			<td>readyState</td>
			<td>myRequest.readyState</td>
			<td>$.Ajax</td>
		</tr>
		<tr>
			<td>R</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>reduce</td>
			<td>myArray.reduce(func,initialValue)</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>R</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>reduceRight</td>
			<td>myArray.reduceRight(func,initialValue)</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>R</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>ReferenceError</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>R</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Refresh</td>
			<td colspan="2">When you make a change to a JavaScript file, you have to be careful that the page really refreshes.</td>
		</tr>
		<tr>
			<td>R</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>RegExp</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>R</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>13.2</td>
			<td>RegExp</td>
			<td>RegExp</td>
			<td>var X = new RegExp('hello');</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>R</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>node</td>
			<td>removeChild</td>
			<td>old.parentNode.removeChild(old);</td>
			<td>$('h1').remove();</td>
		</tr>
		<tr>
			<td>R</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>&nbsp;</td>
			<td>removeEventListener</td>
			<td>node.removeEventListener(&quot;click&quot;,myFunction,false);</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>R</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>String</td>
			<td>replace</td>
			<td>&nbsp;</td>
			<td>Regular expressions</td>
		</tr>
		<tr>
			<td>R</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>String</td>
			<td>replace</td>
			<td>Regular Expression</td>
			<td>Use with caution</td>
		</tr>
		<tr>
			<td>R</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>String</td>
			<td><a href="../jsZenGarden/Methods/String/Replace.cfm">replace</a></td>
			<td>X = X.replace('abc','xyz');</td>
			<td>This example does not use a regular expression.</td>
		</tr>
		<tr>
			<td>R</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>node</td>
			<td>replaceChild</td>
			<td>old.parentNode.replaceChild(newTD, old);</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>R</td>
			<td>Input Event</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>node</td>
			<td>reset</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>R</td>
			<td>jQuery</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>responseText</td>
			<td>myRequest.responseText</td>
			<td>$.Ajax</td>
		</tr>
		<tr>
			<td>R</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>return</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>R</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>return false;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>R</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Function</td>
			<td>return</td>
			<td>return</td>
			<td>returns <em>undefined</em></td>
		</tr>
		<tr>
			<td>R</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>Constructor</td>
			<td>return</td>
			<td><p>var myClass = function() {<br>
				&nbsp;&nbsp;&nbsp;this.A = 1;<br>
				};<br>
				var X = new myClass();</p>
				<p>myClass.prototype.myMethod = function() {<br>
					&nbsp;&nbsp;&nbsp;return this.A;<br>
				}</p>
				<p>X.myMethod();</p></td>
			<td>return <em>this</em> is implied when constructing myClass.</td>
		</tr>
		<tr>
			<td>R</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Function</td>
			<td>return</td>
			<td>return<br>
				{</td>
			<td>returns undefined<br>
			because of semicolon insertion</td>
		</tr>
		<tr>
			<td>R</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>Function</td>
			<td>return</td>
			<td>return result;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>R</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>Function</td>
			<td>return</td>
			<td>return { OK:true };</td>
			<td>returns an object</td>
		</tr>
		<tr>
			<td>R</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td>return</td>
			<td>&nbsp;</td>
			<td>return result;</td>
		</tr>
		<tr>
			<td>R</td>
			<td>method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>event</td>
			<td>returnValue</td>
			<td>if (typeof myEvent.preventDefault === 'undefined') {<br>
				&nbsp;&nbsp;&nbsp;myEvent.returnValue = false;<br>
				}</td>
			<td>Internet Explorer only</td>
		</tr>
		<tr>
			<td>R</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Arrays</td>
			<td>reverse</td>
			<td>myArray.reverse();</td>
			<td>Changes the value of myArray</td>
		</tr>
		<tr>
			<td>R</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Array</td>
			<td><a href="Methods/Array/Reverse.cfm">reverse</a></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>R</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Math</td>
			<td>round</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>R</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>Math</td>
			<td>round</td>
			<td>to the nearest integer</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>R</td>
			<td>Worker</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>status</td>
			<td>running</td>
			<td>&nbsp;</td>
			<td>myPort.status.running</td>
		</tr>
		<tr>
			<td>S</td>
			<td>tag</td>
			<td>&nbsp;</td>
			<td>Pit</td>
			<td>html</td>
			<td>script tag</td>
			<td>&lt;script&gt;Your code here&lt;/script&gt;</td>
			<td>Use &lt;script src=&gt;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Collection</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>document</td>
			<td>scripts</td>
			<td>Netscape only</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>navigator</td>
			<td>scrollbar</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Object</td>
			<td>seal</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>String</td>
			<td>search</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>String</td>
			<td>search</td>
			<td>Regular Expression</td>
			<td>Use with caution</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>select</td>
			<td>element('X').select()</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>8.1</td>
			<td>&nbsp;</td>
			<td>selected</td>
			<td>true or false</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>8.1</td>
			<td>&nbsp;</td>
			<td>selectedIndex</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>window</td>
			<td>self</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>jQuery</td>
			<td>&nbsp;</td>
			<td>13.3</td>
			<td>Ajax</td>
			<td>send</td>
			<td>myRequest.send(null);</td>
			<td>$.Ajax</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Reserved?</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td><a href="../jsZenGarden/ReservedWords/Set.cfm">set</a></td>
			<td>getters and setters</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td><a href="Set.cfm">set</a></td>
			<td>getters and setters</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>element</td>
			<td>setAttribute</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>jQuery</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>method</td>
			<td>setAttribute</td>
			<td>&nbsp;</td>
			<td>attr</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>setDate</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>setFullYear</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>setHours</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>setInterval</td>
			<td>X = setInterval(&quot;alert('Red alert!')&quot;,2000);</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>6.4</td>
			<td>method</td>
			<td>setInterval</td>
			<td>var X = setInteral(myFunction, 1000);<br>
				//  milliseconds</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>setMilliseconds</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>setMinutes</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>setMonth</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>setSeconds</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>setTime</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td>setTimeout</td>
			<td>alert('Two seconds till shutdown');<br>
				X = setTimeout('shutdown',2000);</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>6.4</td>
			<td>stmt</td>
			<td>setTimeout</td>
			<td>single milliseconds</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>setUTCDate</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>setUTCFullYear</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>setUTCHours</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>setUTCMilliseconds</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>setUTCMinutes</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>setUTCMonth</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>setUTCSeconds</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>setYear</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Worker</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>window</td>
			<td>SharedWorker</td>
			<td><a href="Worker/SharedWorker.cfm">Example</a></td>
			<td>window.SharedWorker</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Arrays</td>
			<td>shift</td>
			<td>shift can be implmented like this:</td>
			<td>Array.method('shift', function() {<br>
				&nbsp;&nbsp;&nbsp;return this.splice(0,1)[0];});</td>
		</tr>
		<tr>
			<td>S</td>
			<td>ECMAScript&nbsp;3</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>short</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>short</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Math</td>
			<td>sin</td>
			<td>sine</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>String</td>
			<td>slice</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Arrays</td>
			<td>slice</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td><abbr title="Isn't an array, but inherits from Array.prototype">~Array</abbr></td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>arguments</td>
			<td>slice</td>
			<td>arguments.slice(2)</td>
			<td>Array.prototype.slice.apply(arguments, [2]);</td>
		</tr>
		<tr>
			<td>S</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>slice</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>String</td>
			<td>slice</td>
			<td>X.slice(start, [end]) </td>
			<td>substr</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>Maybe</td>
			<td>Array</td>
			<td><a href="Methods/Array/Slice.cfm">slice</a></td>
			<td>Copies up to, but not including, end. </td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>String</td>
			<td>small</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>some</td>
			<td>myArray.some(func,thisArg)</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Arrays</td>
			<td>sort</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Array</td>
			<td><a href="Methods/Array/Sort.cfm">sort</a></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Arrays</td>
			<td>splice</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>String</td>
			<td><a href="../jsZenGarden/Methods/String/Split.cfm">split</a></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>Pit</td>
			<td>Number</td>
			<td>split</td>
			<td>var X = 1;<br>
				var myArray = X.split();</td>
			<td>Doesn't work if X is a number <br>
				(A comma separated list of whose length=1)<br>
				var myArray = X.toString().split();</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>String</td>
			<td>split</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Math</td>
			<td>sqrt</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>Math</td>
			<td>sqrt</td>
			<td>X ^ .5</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>Math</td>
			<td>SQRT1_2</td>
			<td>square root of 0.5</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>Math</td>
			<td>SQRT2</td>
			<td>square root of 2</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>attribute</td>
			<td>&nbsp;</td>
			<td>Intro</td>
			<td>html</td>
			<td>src</td>
			<td>&lt;script src=&quot;myScript.js&quot;&gt;&lt;/script&gt;</td>
			<td>Best practice is to use a .js extension</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Worker</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>port</td>
			<td>start</td>
			<td>&nbsp;</td>
			<td>worker.port.start();</td>
		</tr>
		<tr>
			<td>S</td>
			<td>ECMAScript&nbsp;3</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>static</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>static</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Worker</td>
			<td>&nbsp;</td>
			<td><a href="http://www.lynda.com/tutorials/85868-2.html">3.3</a></td>
			<td>Port</td>
			<td>status</td>
			<td>&nbsp;</td>
			<td>myPort.status</td>
		</tr>
		<tr>
			<td>S</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>navigator</td>
			<td>statusbar</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>event</td>
			<td>stopPropagation</td>
			<td>&nbsp;</td>
			<td>return false;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>css</td>
			<td>String</td>
			<td>strike</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Type wrapper</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>String</td>
			<td>new String()</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Function</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Number</td>
			<td>String</td>
			<td>String(X)</td>
			<td>Converts a number into a string</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Type</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>String</td>
			<td>new String()</td>
			<td>Loose typing</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Data Type</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>String</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>It's implied</td>
		</tr>
		<tr>
			<td>S</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>document</td>
			<td>style</td>
			<td>&nbsp;</td>
			<td>Use an external css style sheet</td>
		</tr>
		<tr>
			<td>S</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>8.3</td>
			<td>&nbsp;</td>
			<td>style</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>8.3</td>
			<td>&nbsp;</td>
			<td>style</td>
			<td>style.display = &quot;none&quot;;</td>
			<td>.toggleClass('hidden')</td>
		</tr>
		<tr>
			<td>S</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>node.style.</td>
			<td>stylename</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>node.currentStyle.</td>
			<td>stylename</td>
			<td>Only IE</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Collection</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>document</td>
			<td>stylesheets</td>
			<td>Netscape only</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Input Event</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>node</td>
			<td>submit</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>css</td>
			<td>String</td>
			<td>sub</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>String</td>
			<td>substr</td>
			<td> X.substr(start [, length ]) </td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>String</td>
			<td>substring</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>String</td>
			<td>substring</td>
			<td>X.substring(start, end)</td>
			<td>substr</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>css</td>
			<td>String</td>
			<td>sup</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>ECMAScript&nbsp;5</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>super</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>super</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>switch</td>
			<td>&nbsp;</td>
			<td>if () {} else if () {} else {}</td>
		</tr>
		<tr>
			<td>S</td>
			<td>ECMAScript&nbsp;3</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>synchronized</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>synchronized</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>S</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>SyntaxError</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>document</td>
			<td>tags</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Math</td>
			<td>tan</td>
			<td>tangent</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Event handler</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Event</td>
			<td>target</td>
			<td>function(e) {<br>
				&nbsp;&nbsp;&nbsp;e = e || event;<br>
				&nbsp;&nbsp;&nbsp;var target = e.target || e.srcElement;<br>
				}</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>Regular Expressions</td>
			<td>test</td>
			<td>var myPattern = new RegExp(..)<br>
				if (myPattern.test(myVariable)) {}</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>13.2</td>
			<td>RegExp</td>
			<td>test</td>
			<td>if (myRegExp.test(myString)) {}</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>css</td>
			<td>style</td>
			<td>textIndent</td>
			<td>&nbsp;</td>
			<td>css text-indent</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td><a href="../jsZenGarden/ReservedWords/this/this01.cfm">this</a></td>
			<td>var X = this;</td>
			<td>At the top level</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td><a href="../jsZenGarden/ReservedWords/this/this02.cfm">this</a></td>
			<td>var myFunction = function() {<br>
&nbsp;&nbsp;&nbsp;			log(this);<br>
}</td>
			<td>Inside a function</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td><a href="../jsZenGarden/ReservedWords/this/this03.cfm">this</a></td>
			<td><p>var X = {};<br>
				X.A = 1;<br>
				X.B = function() {<br>
				&nbsp;&nbsp;&nbsp;log(this);<br>
				}</p>
				<p>X.B();</p></td>
			<td>Inside a function that's inside an object</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Obect</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>this</td>
			<td>var global = this;</td>
			<td>In browsers, <i>window</i> is the global object.</td>
		</tr>
		<tr>
			<td>T</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td><a href="This.cfm">this</a></td>
			<td>clickHandler: function() { // <em>this</em> is what got clicked<br>
				&nbsp;&nbsp;&nbsp;open(this.href);<br>
				&nbsp;&nbsp;&nbsp;return false;<br>
				}</td>
			<td><p>$('.X').click(function() {<br>
				&nbsp;&nbsp;&nbsp;open($(this).attr('href');<br>
				&nbsp;&nbsp;&nbsp;return false;<br>
				} // <em>$(this)</em> is <em>this</em> wrapped in jQuery</p></td>
		</tr>
		<tr>
			<td>T</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td>throw</td>
			<td>try {                 if (isNaN (num)) {                     throw &quot;NaN&quot;;                 } </td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td>throw</td>
			<td>throw new Error(reason);</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td>throw</td>
			<td>throw {<br>
			&nbsp;&nbsp;&nbsp;name: ExceptionName,<br>
			&nbsp;&nbsp;&nbsp;message: reason<br>
			}</td>
			<td>
			Error<br>
			EvalError<br>
			RangeError<br>
			SyntaxError<br>
			TypeError<br>
			URIError<br>					</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td>throw</td>
			<td>try {                 if (isNaN (num)) {                     throw &quot;NaN&quot;;                 } </td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>ECMAScript&nbsp;3</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td>throws</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>throws</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>navigator</td>
			<td>toolbar</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>window</td>
			<td>top</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>toGMTString</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>date</td>
			<td>toISOString</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>toISOString</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>toLocaleDateString</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>toLocaleTimeString</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>toLocaleString</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>String</td>
			<td>toLowerCase</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>String</td>
			<td>toLowerCase</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>top</td>
			<td>&nbsp;</td>
			<td>css</td>
		</tr>
		<tr>
			<td>T</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>toString</td>
			<td>A  = B.toString();</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>String</td>
			<td>toString</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>toString</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>toString</td>
			<td>Example in video 2 at 49:51</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>Array</td>
			<td><a href="Methods/Array/toString.cfm">toString</a></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>iOS 6.5</td>
			<td>&nbsp;</td>
			<td>touches</td>
			<td>&nbsp;</td>
			<td>myEvent.touches</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>String</td>
			<td>toUpperCase</td>
			<td>X = X.toUpperCase();</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>String</td>
			<td>toUpperCase </td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>toUTCString</td>
			<td>&nbsp;</td>
			<td>var d = new Date();<br>
return d.toUTCString().substring(17,25);</td>
		</tr>
		<tr>
			<td>T</td>
			<td>ECMAScript&nbsp;3</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>transient</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>transient</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>trim</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Intro</td>
			<td>&nbsp;</td>
			<td>true</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Boolean Value</td>
			<td>&nbsp;</td>
			<td>Intro</td>
			<td>Boolean</td>
			<td>true</td>
			<td>truthy values are:</td>
			<td>Everything else, including<br>
				"0"<br>
				"false"<br>
				[]</td>
		</tr>
		<tr>
			<td>T</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td>true</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>2.3</td>
			<td>&nbsp;</td>
			<td>true</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td>try</td>
			<td>try {}
				catch (){}
				finally {} </td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td>try</td>
			<td>try {}
				catch (){}
				finally {} </td>
			<td>Allow errors while developing</td>
		</tr>
		<tr>
			<td>T</td>
			<td>attribute</td>
			<td>&nbsp;</td>
			<td>Pit</td>
			<td>html</td>
			<td> type</td>
			<td>&lt;script type=&quot;text/javascript&quot;&gt;&lt;/script&gt;</td>
			<td>type is ignored by the browser</td>
		</tr>
		<tr>
			<td>T</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>8.1</td>
			<td>&nbsp;</td>
			<td>type</td>
			<td>select-one or select-multiple</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>TypeError</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td><a href="../jsZenGarden/ReservedWords/TypeOf.cfm">typeof</a></td>
			<td>if (typeof X === 'object') {}</td>
			<td>
			boolean<br>
			function<br>
			number<br>
			object<br>
			string<br>
			undefined<br>					</td>
		</tr>
		<tr>
			<td>T</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td><a href="TypeOf.cfm">typeof</a></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>T</td>
			<td>Operator</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td class="center">typeof</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>U</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>undefined</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>U</td>
			<td>Not sure</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>undefined</td>
			<td>var myUndefined; log(typeof myUndefined);</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>U</td>
			<td>Data Type</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>undefined</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>U</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>2.3</td>
			<td>&nbsp;</td>
			<td>undefined</td>
			<td>var X;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>U</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>2.3</td>
			<td>&nbsp;</td>
			<td>undefined</td>
			<td>if (X == undefined) {}</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>U</td>
			<td>Global Variable</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>URIError</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>U</td>
			<td>Value</td>
			<td>&nbsp;</td>
			<td>Intro</td>
			<td>&nbsp;</td>
			<td>undefined</td>
			<td>var X;<br></td>
			<td>X is an <em>undefined</em> value<br>
				It is one of the six falsey values</td>
		</tr>
		<tr>
			<td>U</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>undefined</td>
			<td>if (typeof document.all != &quot;undefined&quot;) {}</td>
			<td>Checks to see if the browser supports document.all</td>
		</tr>
		<tr>
			<td>U</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>undefined</td>
			<td>var myUndefined; log(typeof myUndefined)</td>
			<td><a href="http://stackoverflow.com/questions/2518276/javascript-types">Stackoverflow</a></td>
		</tr>
		<tr>
			<td>U</td>
			<td>mode</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td>&quot;use strict&quot;;</td>
			<td>Disables certain features</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>U</td>
			<td>Strict Mode</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>use strict</td>
			<td>Octal literals are forbidden</td>
		</tr>
		<tr>
			<td>U</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>12.3</td>
			<td>stmt</td>
			<td>use strict</td>
			<td><a href="strict/strict.cfm">&quot;use strict&quot;;</a></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>U</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>13.1</td>
			<td>navigator</td>
			<td>userAgent</td>
			<td><a href="navigator/userAgent.cfm">Example</a></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>U</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>UTC</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>V</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>document</td>
			<td>value</td>
			<td>document.myForm.X.value</td>
			<td>$('#X).val()</td>
		</tr>
		<tr>
			<td>V</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>6.3</td>
			<td>&nbsp;</td>
			<td>value</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>V</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>&nbsp;</td>
			<td>valueOf</td>
			<td>Starttime = new Date().valueOf();<br>
				Elapsed = Endtime - Starttime</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>V</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>String</td>
			<td>valueOf</td>
			<td>The string value</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>V</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>Array</td>
			<td><a href="Methods/Array/valueOf.cfm">valueOf</a></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>V</td>
			<td>Object</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td><a href="Methods/../Objects/Date.cfm">Date</a></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>V</td>
			<td>Method</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Date</td>
			<td>valueOf</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>V</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>2.3</td>
			<td>stmt</td>
			<td>var</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>V</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>scoping</td>
			<td>&nbsp;</td>
			<td>var</td>
			<td>&nbsp;</td>
			<td>Variables scope</td>
		</tr>
		<tr>
			<td>V</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>var</td>
			<td>&nbsp;</td>
			<td>local scope</td>
		</tr>
		<tr>
			<td>V</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>local scope</td>
			<td>var</td>
			<td>var Variables = {};<br>
				var myFunction() {<br>
				&nbsp;&nbsp;&nbsp;var local = {};<br>
				&nbsp;&nbsp;&nbsp;local.X = 1;<br>
				&nbsp;&nbsp;&nbsp;Variables.X = 2;<br>
				}</td>
			<td>I use this as a technique:<br>
				Any variables outside of functions are Variables.X.<br>
				Any variables inside of functions are local.X.</td>
		</tr>
		<tr>
			<td>V</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>global scope</td>
			<td>var</td>
			<td>var a,b,c;</td>
			<td>You can define more than 1 variable at a time.</td>
		</tr>
		<tr>
			<td>V</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Adv</td>
			<td>closure scope</td>
			<td>var</td>
			<td>
var myName = (function() {<br>
&nbsp;&nbsp;&nbsp;var myArray = ['zero','one','two'];<br>
&nbsp;&nbsp;&nbsp;return function(X) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return myArray[X];<br>
&nbsp;&nbsp;&nbsp;}<br>
}());
<p>
result = myName(2);</p>					</td>
			<td><p>To keep myArray out of the global namespace,</p>
			<p>myName is:  anonymous function(X) with myArray in the closure scope.</p>
			<p>&nbsp;</p>
			<p>result = anonymous function(2)</p></td>
		</tr>
		<tr>
			<td>V</td>
			<td>function literal</td>
			<td>&nbsp;</td>
			<td>Intro</td>
			<td>&nbsp;</td>
			<td>var</td>
			<td>var myFunction = function(myParameters) {}</td>
			<td>lambda</td>
		</tr>
		<tr>
			<td>V</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td>var</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>V</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>void</td>
			<td>evaluate an expression without using the return value</td>
			<td>Ignore the return value</td>
		</tr>
		<tr>
			<td>V</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>void</td>
			<td>evaluate an expression without using the return value</td>
			<td>Ignore the return value</td>
		</tr>
		<tr>
			<td>V</td>
			<td>Operator</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td class="center">void</td>
			<td>undefined values</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>V</td>
			<td>ECMAScript&nbsp;3</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>volatile</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>V</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>volatile</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>W</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>2.6</td>
			<td>console</td>
			<td>warn</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>W</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>2.7</td>
			<td>stmt</td>
			<td>while</td>
			<td>while (true) {}</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>W</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td><a href="../jsZenGarden/ReservedWords/While.cfm">while</a></td>
			<td>while () {<br>
				Tests condition before looping}</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>W</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>Begin</td>
			<td>&nbsp;</td>
			<td><a href="While.cfm">while</a></td>
			<td>var i=0;<br>
				while (i &lt; myArray.length) {<br>
				&nbsp;&nbsp;&nbsp;myArray[i] = 0;<br>
				&nbsp;&nbsp;&nbsp;i++;<br>
				}</td>
			<td>Tests condition before looping begins</td>
		</tr>
		<tr>
			<td>W</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>9.1</td>
			<td>&nbsp;</td>
			<td>width</td>
			<td>&nbsp;</td>
			<td>css</td>
		</tr>
		<tr>
			<td>W</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>6.1</td>
			<td>window</td>
			<td>window</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>W</td>
			<td>Reserved</td>
			<td>&nbsp;</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td><a href="../jsZenGarden/ReservedWords/With.cfm">with</a></td>
			<td>with (myObject) {A=B}</td>
			<td>results vary depending on myObject<br>
			myObject.A = B<br>
			myObject.A = myObject.B<br>
			A = B<br>
			A = myObject.B					</td>
		</tr>
		<tr>
			<td>W</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>css</td>
			<td>style</td>
			<td>wordSpacing</td>
			<td>&nbsp;</td>
			<td>css word-spacing</td>
		</tr>
		<tr>
			<td>W</td>
			<td>window</td>
			<td>&nbsp;</td>
			<td>12.1</td>
			<td>Worker</td>
			<td>worker</td>
			<td><a href="Window/Worker.cfm">Example</a></td>
			<td>var X = new worker(X.js);</td>
		</tr>
		<tr>
			<td>W</td>
			<td>No</td>
			<td>&nbsp;</td>
			<td>13.1</td>
			<td>document</td>
			<td>write</td>
			<td>document.write</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>W</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>$</td>
			<td>document</td>
			<td>write</td>
			<td>sensitive to when it is called</td>
			<td>$('body').append()</td>
		</tr>
		<tr>
			<td>W</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>document</td>
			<td><a href="../jsZenGarden/jsDummies/Chapter2/002/002.cfm">writeln</a></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		
		<tr>
			<td>X</td>
			<td>jQuery</td>
			<td>&nbsp;</td>
			<td>13.3</td>
			<td>window</td>
			<td>XMLHttpRequest</td>
			<td><p>if (window.XMLHttpRequest) {<br>
				myRequest = new XMLHttpRequest();<br>
				}</p></td>
			<td>$.Ajax()</td>
		</tr>
		<tr>
			<td>Y</td>
			<td>Strict Mode</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>yield</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>Z</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>Property</td>
			<td>&nbsp;</td>
			<td>css</td>
			<td>style</td>
			<td>zIndex</td>
			<td>&nbsp;</td>
			<td>css z-index</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
