<cfset myDir = ExpandPath(".")>
<cffile action="read" file="#myDir#\states.xml" variable="MyXML">
<cfset xmlDoc1 = XMLParse(MyXML)> 
<cfset resources1 = xmlDoc1.xmlroot.xmlChildren>

<cfhttp url="http://labs.adobe.com/technologies/spry/data/states/states.xml" />
<cfset xmlDoc2 = XMLParse(cfhttp.FileContent)>
<cfset resources2=xmlDoc2.xmlroot.xmlChildren>
<cfoutput>
<table>
<tr>
<td>
#ArrayLen(xmlDoc1.states.state)#
</td>
<td>
#ArrayLen(xmlDoc2.xmlroot.xmlChildren)#
</td>
</tr>
<td>
<cfdump var="#resources1#" top="3" label="cffile">
</td>
<td>
<cfdump var="#resources2#" top="3" label="cfhttp">
</td>
</tr>
</table>
</cfoutput>
