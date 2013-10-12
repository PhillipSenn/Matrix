<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>open</h1>
The open command creates the database.
With it, you are saying "I'd like to talk to the indexedDB database called 'Matrix'."<br>
And then indexedDB says "You can talk to it through this variable".<br>
It creates an IDBOpenDBRequest type of object, which onupgradeneeded, onblocked, onerror, onsuccess, and a readystate methods.<br>
readystate="pending".<br>
<p>Under Resources, you can see that a database called "Matrix" has been created.  Version 1.</p>
<cfinclude template="/Inc/foot.cfm">
<script src="open.js"></script>
<cfinclude template="/Inc/End.cfm">
</cfoutput>