<--- --------------------------------------------------------------------------------------- ----
	
	Blog Entry:
	Posting JSON Data To The ColdFusion Server Using jQuery
	
	Code Snippet:
	2
	
	Author:
	Ben Nadel / Kinky Solutions
	
	Link:
	http://www.bennadel.com/index.cfm?event=blog.view&id=2207
	
	Date Posted:
	Jun 7, 2011 at 10:59 AM
	
---- --------------------------------------------------------------------------------------- ---> 

<!---
	Get the HTTP request body content.
 
	NOTE: We have to use toString() as an intermediary method
	call since the JSON packet comes across as a byte array
	(binary data) which needs to be turned back into a string before
	ColdFusion can parse it as a JSON value.
--->
<cfset requestBody = toString(getHttpRequestData().content)>

<cfif isJSON( requestBody )>
	<cfdump var="#deserializeJSON(requestBody)#" label="HTTP Body">
</cfif>
