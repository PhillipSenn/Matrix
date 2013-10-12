<cfscript>
qry = queryNew("id,name","Integer,Varchar", 
[ 
{id=1,name="One One"}, 
{id=1,name="One Two"}, 
{id=1,name="One Three"}, 
{id=2,name="Two"}, 
{id=3,name="Three One"}, 
{id=3,name="Three Two"} 
]); 
</cfscript>

<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<ul>
<cfoutput query="qry" group="ID">
	<li>#ID#
		<ul>
			<cfoutput>
				<li>#Name#</li>
			</cfoutput>
		</ul>
	</li>
</cfoutput>
</ul>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
