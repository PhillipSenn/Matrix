<cfset myContent = "
CREATE UNIQUE CLUSTERED INDEX DivisionName ON Division(DivisionName)
CREATE UNIQUE CLUSTERED INDEX StateName ON State(StateName)
CREATE CLUSTERED INDEX StateID ON City(City_StateID,CityName) -- UNIQUE 
">

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<p>My rule of thumb is to create the PRIMARY KEY as NONCLUSTERED and the first field
as a CLUSTERED index.
Usually the first field relates to a parent table, and by putting the table in that 
sort order, then things that are related are clustered together.
</p>
<pre>#myContent#</pre>
<p>There can only be 1 CLUSTERED index per table.</p>
<p>You would think that CityName would be unique to each state, but the xml files had duplicates.</p>
<p>This is marked as Intermediate because you really don't have to worry about fine tuning indices until a long time 
after you go into production, unless of course you're building the next Amazon.com and expect tremendous traffic your first year.</p>
<p>In this example, each city relates to a state, so by clustering the city table by state id,
it helps those SELECT statements that say 
<pre>WHERE StateID = ?</pre>
<p>I named the index StateID in keeping with my philosophy of keeping naming to a minimum.
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>